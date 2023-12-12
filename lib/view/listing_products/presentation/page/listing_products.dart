import 'package:clothing_one/view/listing_products/presentation/bloc/bloc_listing_products/listing_products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../core/injectable_global/injectable_global.dart';
import '../../../../core/theme/theme.dart';
import '../../../../widget/custom_image_cache/custom_image_cache.dart';
import '../../../single_products/presentation/page/single_product.dart';

class ListingProducts extends StatefulWidget {
  final bool isLogin;
  const ListingProducts({super.key, required this.isLogin});

  @override
  State<ListingProducts> createState() => _ListingProductsState();
}

class _ListingProductsState extends State<ListingProducts> {
  final listingProducts = getIt<ListingProductsBloc>();
  @override
  void initState() {
    super.initState();
    listingProducts.add(const ListingProductsEvent.getProductsListing(false));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => listingProducts,
      child: BlocBuilder<ListingProductsBloc, ListingProductsState>(
        builder: (context, state) {
          if (state is ListingProductsIsLoaded) {
            return StaggeredGridView.countBuilder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                itemCount: state.listingProducts.length,
                itemBuilder: (context, index) {
                  var e = state.listingProducts[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.bottomToTop,
                              child: SingleProducts(
                                idProducts: e.id,
                                isLogin: widget.isLogin,
                              )));
                    },
                    child: Card(
                      color: whiteColor,
                      shadowColor: whiteColor,
                      surfaceTintColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                child: CustomImageCache(
                                  path: e.image,
                                  radiusCircular: 10,
                                  height: 80,
                                  width: double.infinity,
                                  radiusCircularErr: 10,
                                  heightErr: 40,
                                  widthErr: 40,
                                ),
                              ),
                            ),
                            const Gap(10),
                            Text(
                              e.title,
                              style: blackTextStyle.copyWith(
                                  fontWeight: bold, fontSize: 14),
                              // maxLines: 2,
                              // overflow: TextOverflow.ellipsis,
                            ),
                            const Gap(5),
                            Text(
                              "\$${e.price.toString()}",
                              style: blackTextStyle.copyWith(fontWeight: bold),
                            ),
                            const Gap(5),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.solidStar,
                                  size: 12,
                                  color: yellowColor,
                                ),
                                const Gap(5),
                                Text(
                                  e.rating.rate.toString(),
                                  style: blackTextStyle.copyWith(fontSize: 12),
                                ),
                                const Gap(5),
                                Text(
                                  "${e.rating.count.toString()} Reviews",
                                  style: blackTextStyle.copyWith(fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }
          return Container();
        },
      ),
    );
  }
}

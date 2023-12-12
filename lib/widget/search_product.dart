// ignore_for_file: unnecessary_this, deprecated_member_use

import 'package:clothing_one/core/theme/theme.dart';
import 'package:clothing_one/view/single_products/presentation/page/single_product.dart';
import 'package:clothing_one/widget/custom_image_cache/custom_image_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import '../core/injectable_global/injectable_global.dart';
import '../view/listing_cart/presentation/page/listing_cart.dart';
import '../view/listing_products/data/model/models_listing_products.dart';
import '../view/listing_products/presentation/bloc/bloc_listing_products/listing_products_bloc.dart';
import 'debouncer/debouncer.dart';
import 'search_global_widget.dart';

class SearchProducts extends StatefulWidget {
  final bool isLogin;
  const SearchProducts({super.key, required this.isLogin});

  @override
  State<SearchProducts> createState() => _SearchProductsState();
}

class _SearchProductsState extends State<SearchProducts> {
  String query = "";
  final listingProducts = getIt<ListingProductsBloc>();
  List<ModelsListingProducts> products = [];

  @override
  void initState() {
    super.initState();
    listingProducts.add(const ListingProductsEvent.getProductsListing(true));
  }

  final _debouncer = Debouncer(milliseconds: 500);
  void searchVoid(String query) {
    _debouncer.run(() {
      final allProducts = products.where((e) {
        final titleLower = e.title.toString().toLowerCase();
        final searchLower = query.toLowerCase();
        final categoryLower = e.category.toString().toLowerCase();
        return titleLower.contains(searchLower) ||
            categoryLower.contains(searchLower);
      }).toList();

      setState(() {
        this.query = query;
        this.products = query.isNotEmpty ? allProducts : [];
      });

      // Dispatch an event to the bloc when the query is cleared
      if (query.isEmpty) {
        listingProducts
            .add(const ListingProductsEvent.getProductsListing(true));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: blackColor,
          ),
        ),
        title: Lottie.asset(
          "assets/lottie/lottie2.json",
          height: 100,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: const ListingCart()));
              },
              icon: const FaIcon(
                FontAwesomeIcons.shoppingCart,
                size: 15,
              ),
            ),
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => listingProducts,
        child: BlocConsumer<ListingProductsBloc, ListingProductsState>(
          listener: (context, state) {
            if (state is ListingProductsIsLoaded) {
              if (query.isEmpty) {
                setState(() {
                  products = state.listingProducts;
                });
              } else {
                products = state.listingProducts;
              }
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SearchWidget(
                        text: query,
                        onChanged: searchVoid,
                        hintText: "Find",
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: products.map((e) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: GestureDetector(
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
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageCache(
                                        path: e.image,
                                        radiusCircular: 10,
                                        height: 40,
                                        width: 40,
                                        radiusCircularErr: 10,
                                        heightErr: 40,
                                        widthErr: 40,
                                      ),
                                      const Gap(15),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.title,
                                              style: blackTextStyle.copyWith(
                                                  fontWeight: medium),
                                            ),
                                            const Gap(5),
                                            Text(
                                              "\$${e.price.toString()}",
                                              style: blackTextStyle.copyWith(
                                                  fontWeight: bold),
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
                                                  style: blackTextStyle
                                                      .copyWith(fontSize: 12),
                                                ),
                                                const Gap(5),
                                                Text(
                                                  "${e.rating.count.toString()} Reviews",
                                                  style: blackTextStyle
                                                      .copyWith(fontSize: 12),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

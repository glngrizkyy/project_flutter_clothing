// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:clothing_one/core/injectable_global/injectable_global.dart';
import 'package:clothing_one/core/sized/sized.dart';
import 'package:clothing_one/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../widget/custom_button/custom_button.dart';
import '../../../../widget/custom_image_cache/custom_image_cache.dart';
import '../../../../widget/snackbar_custom/snackbar_custom.dart';
import '../../../../widget/text_show_less.dart';
import '../../../add_cart/presentation/bloc/add_cart_bloc.dart';
import '../../../listing_cart/presentation/page/listing_cart.dart';
import '../../../login/presentation/page/login.dart';
import '../bloc/bloc_single_products/single_products_bloc.dart';

class SingleProducts extends StatefulWidget {
  final int idProducts;
  final bool isLogin;
  const SingleProducts({super.key, this.idProducts = 0, required this.isLogin});

  @override
  State<SingleProducts> createState() => _SingleProductsState();
}

class _SingleProductsState extends State<SingleProducts> {
  final singleProducts = getIt<SingleProductsBloc>();
  final addCart = getIt<AddCartBloc>();
  @override
  void initState() {
    super.initState();
    singleProducts
        .add(SingleProductsEvent.getProductsSingle(widget.idProducts));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => singleProducts,
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
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
                onPressed: widget.isLogin == true
                    ? () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.bottomToTop,
                                child: const ListingCart()));
                      }
                    : () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.bottomToTop,
                                child: const LoginPage()));
                      },
                icon: const FaIcon(
                  FontAwesomeIcons.shoppingCart,
                  size: 15,
                ),
              ),
            )
          ],
        ),
        body: BlocListener<AddCartBloc, AddCartState>(
          bloc: addCart,
          listener: (_, state) {
            if (state is AddCartFailed) {
              try {
                log("in here");

                ShowSnackBar.error(context: _, text: "Fail add to cart");
              } catch (e) {
                log("error ${e.toString()}");
              }
            } else if (state is AddCartSuccess) {
              ShowSnackBar.success(
                  context: context, text: "Add to cart successful!");
            }
          },
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: BlocBuilder<SingleProductsBloc, SingleProductsState>(
                  builder: (context, state) {
                    if (state is SingleProductsIsLoaded) {
                      var e = state.singleProducts;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(20),
                          CustomImageCache(
                            path: e.image,
                            radiusCircular: 10,
                            height: 250,
                            width: deviceWidth(context),
                            radiusCircularErr: 10,
                            heightErr: 40,
                            widthErr: 40,
                          ),
                          const Gap(20),
                          Text(
                            e.title,
                            style: blackTextStyle.copyWith(fontWeight: bold),
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              Text(
                                "\$${e.price.toString()}",
                                style:
                                    blackTextStyle.copyWith(fontWeight: medium),
                              ),
                              const Gap(5),
                              const Text("•"),
                              const Gap(5),
                              FaIcon(
                                FontAwesomeIcons.solidStar,
                                size: 12,
                                color: yellowColor,
                              ),
                              const Gap(5),
                              Text(
                                e.rating.rate.toString(),
                                style: blackTextStyle.copyWith(),
                              ),
                              const Gap(5),
                              const Text("•"),
                              const Gap(5),
                              Text(
                                "${e.rating.count.toString()} Reviews",
                                style: blackTextStyle.copyWith(),
                              ),
                            ],
                          ),
                          const Gap(10),
                          ShortedText(text: e.description),
                          const Gap(20),
                          InkWell(
                            onTap: widget.isLogin == true
                                ? () {
                                    addCart.add(
                                        AddCartEvent.addCart(productId: e.id));
                                  }
                                : () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type:
                                                PageTransitionType.bottomToTop,
                                            child: const LoginPage()));
                                  },
                            child: BlocBuilder<AddCartBloc, AddCartState>(
                              bloc: addCart,
                              builder: (context, state) {
                                if (state is AddCartInProgress) {
                                  return CustomButtonLoading(
                                      text: "Please wait..",
                                      textStyle: whiteTextStyle.copyWith(
                                          fontWeight: bold, fontSize: 15),
                                      onPressed: () {});
                                }
                                return Card(
                                  color: primaryColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.shoppingCart,
                                          size: 15,
                                          color: whiteColor,
                                        ),
                                        const Gap(20),
                                        Text(
                                          "Add to Cart",
                                          style: whiteTextStyle,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

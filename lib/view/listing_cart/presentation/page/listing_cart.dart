import 'package:clothing_one/core/theme/theme.dart';
import 'package:clothing_one/widget/custom_button/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/injectable_global/injectable_global.dart';
import '../../../../widget/custom_image_cache/custom_image_cache.dart';

import '../bloc/bloc_listing_cart/listing_cart_bloc.dart';

class ListingCart extends StatefulWidget {
  const ListingCart({super.key});

  @override
  State<ListingCart> createState() => _ListingCartState();
}

class _ListingCartState extends State<ListingCart> {
  List<dynamic> productsIndex = [];
  void incrementQuantity(int index) {
    setState(() {
      productsIndex[index].quantity++;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      productsIndex[index].quantity--;
    });
  }

  void deleteQuantity(int index) {
    setState(() {
      List<dynamic> updatedProducts = List.from(productsIndex);
      updatedProducts.removeAt(index);
      productsIndex = updatedProducts;
    });
  }

  double getCartTotal() {
    double total = 0.0;
    for (int i = 0; i < productsIndex.length; i++) {
      total += productsIndex[i].quantity * productsIndex[i].price;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => getIt<ListingCartBloc>()
              ..add(const ListingCartEvent.getCartListing()),
            child: BlocConsumer<ListingCartBloc, ListingCartState>(
              listener: (context, state) {
                if (state is ListingCartIsLoaded) {
                  productsIndex = state.listingCart;
                  setState(() {});
                }
              },
              builder: (context, state) {
                if (state is ListingCartIsLoading) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 250),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: productsIndex.asMap().entries.map((entry) {
                      int index = entry.key;
                      var product = entry.value;
                      return Card(
                        color: whiteColor,
                        shadowColor: whiteColor,
                        surfaceTintColor: whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageCache(
                                path: product.image.toString(),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.title.toString(),
                                      style: blackTextStyle.copyWith(
                                          fontWeight: medium),
                                    ),
                                    const Gap(5),
                                    Text(
                                      "\$${product.price.toString()}",
                                      style: blackTextStyle.copyWith(
                                          fontWeight: bold),
                                    ),
                                    const Gap(5),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Card(
                                        color: whiteColor,
                                        // shadowColor: whiteColor,
                                        // surfaceTintColor:
                                        //     whiteColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              InkWell(
                                                onTap: product.quantity == 1
                                                    ? () {
                                                        deleteQuantity(index);
                                                      }
                                                    : () {
                                                        decrementQuantity(
                                                            index);
                                                      },
                                                child: FaIcon(
                                                  product.quantity == 1
                                                      ? FontAwesomeIcons.trash
                                                      : FontAwesomeIcons.minus,
                                                  color: blackColor,
                                                  size: 14,
                                                ),
                                              ),
                                              const Gap(20),
                                              Text(product.quantity.toString()),
                                              const Gap(20),
                                              InkWell(
                                                onTap: () {
                                                  incrementQuantity(index);
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.plus,
                                                  color: blackColor,
                                                  size: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: Material(
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total ${productsIndex.length} Items"),
                  Text(
                    "USD ${getCartTotal().toStringAsFixed(2)}",
                    style: blackTextStyle.copyWith(fontWeight: bold),
                  ),
                ],
              ),
              const Gap(10),
              CustomButton(
                onPressed: () {},
                textStyle: whiteTextStyle,
                text: "Proceed to Check Out",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

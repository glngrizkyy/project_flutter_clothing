// ignore_for_file: deprecated_member_use

import 'package:clothing_one/core/theme/theme.dart';
import 'package:clothing_one/view/listing_cart/presentation/page/listing_cart.dart';
import 'package:clothing_one/view/login/presentation/page/login.dart';
import 'package:clothing_one/widget/search_product.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class AppBarDashboard extends StatefulWidget implements PreferredSizeWidget {
  final bool isLogin;
  const AppBarDashboard({super.key, required this.isLogin});

  @override
  State<AppBarDashboard> createState() => _AppBarDashboardState();
  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _AppBarDashboardState extends State<AppBarDashboard> {
  @override
  Widget build(BuildContext context) {
    debugPrint("is login 1 ${widget.isLogin}");
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: IconButton(
          onPressed: widget.isLogin == true
              ? () => setState(() => Scaffold.of(context).openDrawer())
              : () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: const LoginPage()));
                },
          icon: CircleAvatar(
            backgroundColor: primaryColor,
            child: FaIcon(
              FontAwesomeIcons.userAlt,
              size: 16,
              color: whiteColor,
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Lottie.asset(
        "assets/lottie/lottie2.json",
        height: 100,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 0),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: SearchProducts(
                          isLogin: widget.isLogin,
                        )));
              },
              icon: const FaIcon(
                FontAwesomeIcons.search,
                size: 15,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
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
    );
  }
}

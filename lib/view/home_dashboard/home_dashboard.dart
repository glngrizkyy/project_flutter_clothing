// ignore_for_file: deprecated_member_use

import 'package:clothing_one/core/theme/theme.dart';
import 'package:clothing_one/widget/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'package:page_transition/page_transition.dart';

import '../../widget/appbar_dashboard.dart';
import '../listing_products/presentation/page/listing_products.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  final secure = const FlutterSecureStorage();
  bool boolValue = false;
  String email = "";
  String first = "";
  String last = "";
  var formatter = DateFormat('yyyy-MM-dd');
  DateTime nows = DateTime.now();

  @override
  void initState() {
    super.initState();
    getValue();
  }

  getValue() async {
    await secure.read(key: "isLogin").then((value) {
      boolValue = value?.toLowerCase() == 'true';
    });
    await secure.read(key: "userEmail").then((value) {
      email = value.toString();
    });
    await secure.read(key: "firstName").then((value) {
      first = value.toString();
    });
    await secure.read(key: "lastName").then((value) {
      last = value.toString();
    });
    setState(() {});
    String formattedDate = formatter.format(nows);
    debugPrint("is login $formattedDate");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarDashboard(isLogin: boolValue),
      drawer: SizedBox(
        width: 205,
        child: Drawer(
          backgroundColor: whiteColor,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: primaryColor),
                      accountName: Text(
                        "$first $last",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      accountEmail: Text(
                        email,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      currentAccountPicture: Container(
                        decoration: BoxDecoration(
                          color: bgProfile,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: bgProfile,
                            width: 4,
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.height * 0.15,
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.tshirt,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: CustomButton(
                      text: "Log Out",
                      textStyle: whiteTextStyle.copyWith(
                          fontWeight: bold, fontSize: 15),
                      onPressed: () {
                        secure.deleteAll();
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.bottomToTop,
                                child: const HomeDashboard()));
                      },
                    )),
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                ListingProducts(isLogin: boolValue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

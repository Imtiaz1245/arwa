import 'dart:async';

import 'package:arwa/ApplicationModule/CartModule/View/cart_view.dart';
import 'package:arwa/ApplicationModule/CategoryModule/View/Components/cat_grid_view.dart';
import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/deals_and_discount_view.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/brands_list.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/cat_details.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/home_view.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/offer_list_view.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/view_all.dart';
import 'package:arwa/ApplicationModule/ProfileModule/View/edit_profile_view.dart';
import 'package:arwa/ApplicationModule/ProfileModule/View/profile_view.dart';
import 'package:arwa/ApplicationModule/WalletModule/View/wallet_module.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../CategoryModule/View/category_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  Timer? timer;
int current_index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: current_index==0?CategoryView():current_index==1?DealsAndDiscountView():current_index==2?HomeViewv():current_index==3?WalletModule():ProfileView(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

floatingActionButton: FloatingActionButton(
  backgroundColor: AppColors.defaultButtonColor,
  onPressed: (){
    setState(() {
      current_index=2;
    });

  },child: Image.asset("assets/images/homeimages/home.png",height: 24,width: 24,),

),
bottomSheet: BottomAppBar(
  notchMargin: 4.0,
  shape: CircularNotchedRectangle(),
  child:
SizedBox(
  height:61,

  child:   Row(
  mainAxisSize: MainAxisSize.max,
  children: <Widget>[
  InkWell(
  onTap: () {
  setState(() {
  current_index = 0;
  });
  },
  child: SizedBox(
  width: CustomWidth(context) / 5,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  Image.asset(
  "assets/images/homeimages/category.png",
  height: 24,
  width: 24,
  ),
  SizedBox(
  height: 5,
  ),
  DefaultTextView(
  text: "Categories",
  fontsize: 8.0,
  fontFamily: "popinsMedium",
  )
  ],
  ),
  ),
  ),
  InkWell(
  onTap: () {
  setState(() {
  current_index = 1;
  });
  },
  child: SizedBox(
  width: CustomWidth(context) / 5,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  Image.asset(
  "assets/images/homeimages/discount.png",
  height: 24,
  width: 24,
  ),
  SizedBox(
  height: 5,
  ),
  DefaultTextView(
  text: "Deals",
  fontsize: 8.0,
  fontFamily: "popinsMedium",
  )
  ],
  ),
  ),
  ),
  SizedBox(
  width: CustomWidth(context) / 5.5,
  ),
  InkWell(
  onTap: () {
  setState(() {
  current_index = 3;
  });
  },
  child: SizedBox(
  width: CustomWidth(context) / 5,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  Image.asset(
  "assets/images/homeimages/wallet.png",
  height: 24,
  width: 24,
  ),
  SizedBox(
  height: 5,
  ),
  DefaultTextView(
  text: "Wallet",
  fontsize: 8.0,
  fontFamily: "popinsMedium",
  )
  ],
  ),
  ),
  ),
  InkWell(
  onTap: () {
  setState(() {
  current_index = 4;
  });
  },
  child: SizedBox(
  width: CustomWidth(context) / 5,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  Image.asset(
  "assets/icons/username.png",
  height: 24,
  width: 24,
  ),
  SizedBox(
  height: 5,
  ),
  DefaultTextView(
  text: "Profile",
  fontsize: 8.0,
  fontFamily: "popinsMedium",
  )
  ],
  ),
  ),
  ),
  ]),
),
),
      );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {

    });
  }
}
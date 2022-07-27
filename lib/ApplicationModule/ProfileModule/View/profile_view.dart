import 'package:arwa/ApplicationModule/AuthenticationModule/View/signin_view.dart';
import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/Components/appbar_deals.dart';
import 'package:arwa/ApplicationModule/FavouriteModule/View/favourite_view.dart';
import 'package:arwa/ApplicationModule/OrderHistoryModule/View/order_history.dart';
import 'package:arwa/ApplicationModule/ProfileModule/View/Components/circle_profile.dart';
import 'package:arwa/ApplicationModule/ProfileModule/View/Components/profile_items.dart';
import 'package:arwa/ApplicationModule/ProfileModule/View/edit_profile_view.dart';
import 'package:arwa/ApplicationModule/SettingModule/View/setting_view.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.defaultButtonColor,
        body:
    SafeArea(
        child: Container(
          height: CustomHeight(context),
        width: CustomWidth(context),
        margin: EdgeInsets.only(top: 20.0),
    decoration: BoxDecoration(
    color: AppColors.whiteColor,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.0),
    topLeft: Radius.circular(20.0))),
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        SizedBox(
          height: 33.0,
        ),
        DealsAppbar(text: "My Profile",),

        Expanded(
          child: ListView(
          children: [

          SizedBox(
          height: 48.0,
          ),
            CircleProfile(),
            ProfileItems(onpress: (){

              Get.to(EditProfileView(),transition: Transition.rightToLeft);
            },title: "Edit Profile",prefixIcon: "assets/icons/profileediticon.png",),
            ProfileItems(onpress: (){
              Get.to(OrderHistory(),transition: Transition.rightToLeft);



            },title: "Order History",prefixIcon: "assets/icons/profileediticon.png",),
            ProfileItems(onpress: (){},title: "My Addresses",prefixIcon: "assets/icons/profileediticon.png",),
            ProfileItems(onpress: (){
              Get.to(FavouriteView(),transition: Transition.rightToLeft);


            },title: "My Favourites",prefixIcon: "assets/icons/profileediticon.png",),
            ProfileItems(onpress: (){},title: "My Cards",prefixIcon: "assets/icons/profileediticon.png",),
            ProfileItems(onpress: (){
              Get.to(SettingView(),transition: Transition.rightToLeft);


            },title: "Settings",prefixIcon: "assets/icons/profileediticon.png",),
            ProfileItems(onpress: (){

              Get.offAll(SignInView(),transition: Transition.rightToLeft);

            },title: "Log Out",prefixIcon: "assets/icons/profileediticon.png",),
            SizedBox(height: 80,)
          ]
          ),
        ),
      ],
    )
    )
    )
    )
    );
  }
}

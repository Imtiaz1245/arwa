import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool active=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.defaultButtonColor,
        body: SafeArea(
        child: Container(
        margin: EdgeInsets.only(top: 20),
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
    height: 35.0,
    ),
    DefaultAppbar(onpress: () {}, text: "Settings"),
    SizedBox(
    height: 41.0,
    ),
      items(text: "Change Password"),
      SizedBox(height: 20.0,),
        Material(

            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(4.0),
            elevation: 1.0,
            child: Container(

              height: 53.0,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 20.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultTextView(text: "Subscribe to Our Product Emails?",fontsize: 14.0,fontFamily: "popinsMedium",),

    FlutterSwitch(
    height: 19.0,
    width: 29.0,
    toggleSize: 15.0,
    borderRadius: 10.0,
    activeColor: AppColors.defaultButtonColor,
    value: active,
    onToggle: (value) {
    setState(() {
    active = value;
    });
    },
    ),

                  ],
                ),
              ),
            ),
        ),
      SizedBox(height: 20.0,),
      items(text: "About Arwa"),
      SizedBox(height: 20.0,),
      items(text: "Terms and Conditions"),
      SizedBox(height: 20.0,),
      items(text: "Privacy Policy"),
      SizedBox(height: 20.0,),
      items(text: "Return Policy"),
    ]
    )
    )
    )
    )
    );
  }
}
Widget items({required text}){
  return Material(

    color: AppColors.whiteColor,
    borderRadius: BorderRadius.circular(4.0),
    elevation: 1.0,
    child: Container(

      height: 53.0,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultTextView(text: "${text}",fontsize: 14.0,fontFamily: "popinsMedium",),
            Image.asset("assets/icons/arrowfor.png",height: 14,width: 12,)

          ],
        ),
      ),
    ),
  );
}


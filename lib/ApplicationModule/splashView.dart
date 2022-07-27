import 'dart:async';

import 'package:arwa/ApplicationModule/AuthenticationModule/View/signin_view.dart';
import 'package:arwa/ApplicationModule/CategoryModule/View/Components/category_with_details.dart';
import 'package:arwa/ApplicationModule/CategoryModule/View/category_view.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));
    timer=Timer.periodic(Duration(seconds: 3), (timer) {

      Get.offAll(SignInView());

    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
    timer!.cancel();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:  Image.asset("assets/images/arwaimage.png",fit: BoxFit.fill,)),


    );
  }
}

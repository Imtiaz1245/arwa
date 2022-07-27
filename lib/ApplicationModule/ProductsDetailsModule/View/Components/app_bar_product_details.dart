import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AppBarProductDetails extends StatefulWidget {
  const AppBarProductDetails({Key? key}) : super(key: key);

  @override
  State<AppBarProductDetails> createState() => _AppBarProductDetailsState();
}

class _AppBarProductDetailsState extends State<AppBarProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (){
            Get.back();

          },
          child: Container(
            alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                shape: BoxShape.circle
              ),
              child: Image.asset("assets/images/homeimages/backarrow.png",height: 19.0,width: 19.0,)),
        ),
DefaultTextView(text: "Arwa 200ml",fontsize: 16.0,fontFamily: "popinssemibold",color: AppColors.blackColor,),

    Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    color: AppColors.whiteColor,
    shape: BoxShape.circle),
    child: Stack(
    children: [
    Align(
      alignment: Alignment.center,
      child: Container(
      height: 24,
      width: 24,
      child: Image.asset(
      "assets/images/homeimages/carticon.png")),
    ),
    Align(
      alignment: Alignment.topRight,
      child: Padding(
      padding: EdgeInsets.all(6.0),
      child: SizedBox(
      height: 8,
      width: 8,
      child: CircleAvatar(
      backgroundColor: Colors.red,
      ),
      ),
      ),
    )
      ],
    )

    )
    ]
    );
  }
}

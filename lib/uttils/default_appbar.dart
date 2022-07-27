import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DefaultAppbar extends StatelessWidget {
  final onpress,text;
  const DefaultAppbar({Key? key, required this.onpress, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23,
   width: CustomWidth(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(onTap: (){
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_outlined,color: AppColors.blackColor,size: 19.0,),),
          DefaultTextView(text: "${text}",fontsize: 16.0,fontFamily: "popinssemibold",),
          SizedBox(),
        ],
      ),
    );
  }
}

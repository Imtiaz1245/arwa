import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
class CircleProfile extends StatelessWidget {
  const CircleProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      child: Row(children: [
SizedBox(height: 100,
width: 100,
child: ClipOval(
  child: Image.asset("assets/images/homeimages/arwabanner.png",fit: BoxFit.fill,),

),),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextView(text: "Simon Lewis",fontsize: 26.0,fontFamily: "popinssemibold",),
            DefaultTextView(text: "Simon.lewis@gmail.com",fontsize: 14.0,color: AppColors.greyColor,),
          ],
        )
      ],),
    );
  }
}

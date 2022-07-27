import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
class BrandsList extends StatelessWidget {
  const BrandsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118,

      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(left: 15.0),
          child: Container(
            height: 118,
            width: 90,
            child: Column(
              children: [
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10.0),

                      boxShadow: [

                      ]
                    ),
                    child: Image.asset("assets/images/homeimages/botel1.png",height: 60,width: 22,),
                  ),
                ),
SizedBox(height: 10,),
                DefaultTextView(text: "Arwa",fontsize: 12.0,fontFamily: "popinsMedium",)
              ],
            ),
          ),
        );
      },),
    );
  }
}

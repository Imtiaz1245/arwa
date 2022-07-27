import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
class ViewAll extends StatelessWidget {
  final text,onPress,fontSize;
   ViewAll({Key? key, required this.text, required this.onPress, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          DefaultTextView(
            text: "${text}",
            fontFamily: "popinssemibold",
            fontsize: fontSize,
          ),
          InkWell(
            onTap: onPress,
            child: Row(
              children: [
                DefaultTextView(
                  text: "View All",

                  fontsize: 12.0,
                ),
                SizedBox(width: 5.0,),
                Container(
                  height: 16.0,
                  width: 16.0,
                  decoration: BoxDecoration(
                    color: AppColors.dotGreenColor,
                    borderRadius: BorderRadius.circular(5.0),

                  ),
                  child: Icon(Icons.arrow_forward_ios_outlined,color: AppColors.whiteColor,size: 8.0
                    ,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

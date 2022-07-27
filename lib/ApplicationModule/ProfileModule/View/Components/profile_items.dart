import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
class ProfileItems extends StatelessWidget {
  final onpress,prefixIcon,title;
  const ProfileItems({Key? key, required this.onpress,required this.prefixIcon,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Padding(
        padding:  EdgeInsets.only(top: 30.0),
        child: SizedBox(
          height: 50,
          width: CustomWidth(context),


          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Image.asset("${prefixIcon}",height: 40,width: 40,),


              DefaultTextView(text: "${title}",fontsize: 16.0,fontFamily: "popinsMedium",),
              SizedBox(width: 15.0,),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
          Icon(Icons.arrow_forward_ios,size: 9,)
            ],
          ),
        ),
      ),
    );
  }
}

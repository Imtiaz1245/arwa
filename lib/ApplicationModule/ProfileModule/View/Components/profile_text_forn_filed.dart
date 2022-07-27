import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:flutter/material.dart';
class ProfileTextFormField extends StatelessWidget {
  final controller,suffixIcon,readOnly;
  const ProfileTextFormField({Key? key, this.controller, this.suffixIcon, this.readOnly=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57.0,
      width: CustomWidth(context),
      child: TextFormField(
        readOnly: readOnly,
        controller: controller,
        style: TextStyle(fontSize: 14.0,fontFamily: "popinsMedium",color: AppColors.blackColor),
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding:  EdgeInsets.only(bottom: 16.0),
            child: Image.asset("${suffixIcon}",height: 14,width: 14,),
          ),


        ),
      ),

    );
  }
}

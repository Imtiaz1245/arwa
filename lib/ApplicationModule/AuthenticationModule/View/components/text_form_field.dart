import 'package:flutter/material.dart';
class CustomTextFormField2 extends StatelessWidget {
  final width,controller,prefixIcon,hintText,borderRadius;
  const CustomTextFormField2({Key? key, this.width, this.controller, this.prefixIcon, this.hintText, this.borderRadius=6.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    SizedBox(height: 50,width:width,child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius)),
        prefixIcon: Padding(
          padding: EdgeInsets.all(15.0),
          child: prefixIcon
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12.0,),


      ),
    ),);
  }
}

import 'package:arwa/uttils/colors.dart';
import 'package:flutter/material.dart';

class DefaultTextView extends StatelessWidget {
  final fontsize, color, fontweight, text, height, width, fontFamily, textAlign;

  const DefaultTextView(
      {Key? key,
      this.fontsize,
      this.color = AppColors.blackColor,
      this.fontweight,
      required this.text,
      this.height,
      this.width,
      this.fontFamily = "popinsregular",
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: Text(
          text,
          textAlign: textAlign,
          style: TextStyle(
            fontSize: fontsize,
            color: color,
            fontWeight: fontweight,
            fontFamily: fontFamily,
          ),
        ));
  }
}

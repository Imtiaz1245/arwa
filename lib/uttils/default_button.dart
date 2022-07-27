import 'package:arwa/uttils/colors.dart';
import 'package:flutter/material.dart';
class DefaultButton extends StatelessWidget {
  final height,width,onpress,btnColor,child,borderRadius;
  DefaultButton({Key? key, this.height, this.width, this.onpress, this.btnColor=AppColors.defaultButtonColor, this.child, this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: onpress,
        child: child,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        color: btnColor,

      ),

    );
  }
}

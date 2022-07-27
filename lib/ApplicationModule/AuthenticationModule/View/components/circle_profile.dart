import 'package:arwa/uttils/colors.dart';
import 'package:flutter/material.dart';
class ProfileCircle extends StatefulWidget {
  final imageBorderColor,cameraImage,totalHeight,imageHeight;
  const ProfileCircle({Key? key, required this.imageBorderColor, required  this.cameraImage, this.totalHeight=132.0, this.imageHeight=113.0}) : super(key: key);

  @override
  State<ProfileCircle> createState() => _ProfileCircleState();
}

class _ProfileCircleState extends State<ProfileCircle> {
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: widget.totalHeight,
        width: widget.totalHeight,
        child: Stack(
          children: [
            SizedBox(
              height: widget.totalHeight,
              width: widget.totalHeight,
              child: CircleAvatar(
                backgroundColor:widget.imageBorderColor,
                child: SizedBox(
                  height: widget.imageHeight,
                  width: widget.imageHeight,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/arwabanners.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 40,
                width: 40,
                child: CircleAvatar(
               backgroundImage: AssetImage("${widget.cameraImage}"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

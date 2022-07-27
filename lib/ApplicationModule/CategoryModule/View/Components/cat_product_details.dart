import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
class CatProductDetails extends StatelessWidget {
  final index;
  const CatProductDetails({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      width: 157,
      child: Stack(
        children: [
          Positioned(
            top: 51.0,
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(14.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 172,
                width: 157,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0)
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 12.0),
                  child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 9.0,),
                      DefaultTextView(text: "100 ML",color: AppColors.greyColor,fontsize: 10.0,),
                      SizedBox(height: 3.0,),
                      DefaultTextView(text: "Arwa Classic",fontsize: 14.0,fontFamily: "popinssemibold",),
                      SizedBox(height: 3.14,),
                      DefaultTextView(text: "AED 15.00",fontsize: 12.0,color: AppColors.defaultButtonColor,fontFamily: "popinssemibold",),
                      SizedBox(height: 15.0,),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 0.0,
              left: 49.0,
              child: Image.asset("assets/images/homeimages/botel1.png",height: 151,width: 58,)),
          Positioned(
              top: 58.7,
              left: 115.5,

              child: index%2==0?Image.asset("assets/images/homeimages/unfav.png",height: 32,width: 32,fit: BoxFit.fill,):Image.asset("assets/images/homeimages/fav.png",height: 32,width: 32,fit: BoxFit.fill,)

          )
        ],
      ),
    );
  }
}

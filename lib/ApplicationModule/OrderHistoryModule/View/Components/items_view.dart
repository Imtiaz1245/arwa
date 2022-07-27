import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/cupertino.dart';

Widget singleItem({required height,required widht,required imageHeight,required imageWidth}){
  return Container(
    alignment: Alignment.center,
    height: height,
    width: widht,
    decoration: BoxDecoration(
      color: AppColors.cartItemBackColor,
      borderRadius: BorderRadius.circular(6.0),

    ),
    child:Image.asset( "assets/images/homeimages/botel1.png",width: imageWidth,height: imageHeight,),
  );
}
Widget doubleItems(){
  return Row(
    children: [
      singleItem(height:105.0, widht: 50.0, imageHeight: 83.0, imageWidth: 31.0),
      SizedBox(width: 5.0,),
      singleItem(height:105.0, widht: 50.0, imageHeight: 83.0, imageWidth: 31.0),

    ],
  );

}
Widget tripleItems(){
  return Row(
    children: [
     Column(
       children: [
         singleItem(height:50.0, widht: 50.0, imageHeight: 45.0, imageWidth: 15.0),
         SizedBox(height: 5.0,),
         singleItem(height:50.0, widht: 50.0, imageHeight: 45.0, imageWidth: 15.0),
       ],
     ),
      SizedBox(width: 5.0,),
      singleItem(height:105.0, widht: 50.0, imageHeight: 83.0, imageWidth: 31.0),

    ],
  );

}
Widget fourItems(){
 return Row(
    children: [
      Column(
        children: [
          singleItem(height:50.0, widht: 50.0, imageHeight: 45.0, imageWidth: 15.0),
          SizedBox(height: 5.0,),
          singleItem(height:50.0, widht: 50.0, imageHeight: 45.0, imageWidth: 15.0),
        ],
      ),
      SizedBox(width: 5.0,),
      Column(
        children: [
          singleItem(height:50.0, widht: 50.0, imageHeight: 45.0, imageWidth: 15.0),
          SizedBox(height: 5.0,),
       Container(
         alignment: Alignment.center,
         height: 50,
         width: 50,
         decoration: BoxDecoration(
           color: AppColors.whiteColor,
           borderRadius: BorderRadius.circular(6.0),
           border: Border.all(color: AppColors.greyColor,width: 1.0)
         ),
         child: DefaultTextView(text: "+4",fontsize: 14.0,fontFamily: "popinsMedium",),
       )
        ],
      ),

    ],
  );
}
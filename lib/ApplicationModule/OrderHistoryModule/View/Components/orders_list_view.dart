import 'package:arwa/ApplicationModule/OrderHistoryModule/View/Components/items_view.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_button.dart';
import 'package:flutter/material.dart';
class OrderListView extends StatelessWidget {
  const OrderListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, outerIndex) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 1.0),
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            DefaultTextView(text: "October 23, 2021",fontsize: 14.0,),
            SizedBox(height: 20.0,),
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, innerIndex) {
              return Padding(
                padding:  EdgeInsets.only(bottom: 20.0),
                child: Material(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(14.0),
                  elevation: 2.0,

                  child: Container(
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(14.0),
boxShadow: [
  BoxShadow(
    color: AppColors.whiteColor,
    blurRadius: 1
  )
]
),
                    width: CustomWidth(context),
                    child:Padding(
                      padding:  EdgeInsets.only(top: 18.0,bottom: 18.0,left: 20.0,right: 17.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultTextView(text: "OD - 424923192 - N",fontsize: 16.0,fontFamily: "popinsMedium",),
                              SizedBox(height: 5.0,),
                              DefaultTextView(text: "AED 190.00",fontsize: 16.0,fontFamily: "popinssemibold",color: AppColors.defaultButtonColor,),
SizedBox(height: 25.0,),
                              DefaultButton(height: 30.0,width: 100.0,btnColor:innerIndex%2==0? AppColors.dotGreenColor:AppColors.defaultButtonColor,onpress: (){},
                                borderRadius: 6.0,
                                child: DefaultTextView(text:innerIndex%2==0?"Delivered":"In Progress",color: AppColors.whiteColor,fontFamily: "popinsMedium",fontsize: 12.0,textAlign: TextAlign.center,),)
                            ],
                          ),
                        innerIndex==3?fourItems():innerIndex==2?
                          tripleItems():innerIndex==1?
                          doubleItems():
                          singleItem(height:105.0, widht: 105.0, imageHeight: 83.0, imageWidth: 31.0),
                        ],
                      ),
                    ),
                  ),
                ),
              );

            },)
              ],
            ),
          ),
        );
      },),
    );
  }
}

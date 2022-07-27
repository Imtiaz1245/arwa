import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/Components/appbar_deals.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
class WalletModule extends StatefulWidget {
  const WalletModule({Key? key}) : super(key: key);

  @override
  State<WalletModule> createState() => _WalletModuleState();
}

class _WalletModuleState extends State<WalletModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.defaultButtonColor,
        body:
        SafeArea(
        child: Container(
        height: CustomHeight(context),
    width: CustomWidth(context),
    margin: EdgeInsets.only(top: 20.0),
    decoration: BoxDecoration(
    color: AppColors.whiteColor,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.0),
    topLeft: Radius.circular(20.0))),
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
    children: [
    SizedBox(
    height: 33.0,
    ),
    DealsAppbar(text: "My Wallet",),
      SizedBox(
        height: 33.0,
      ),
        DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(20),
            dashPattern: [10, 10],
            color: Colors.grey,
            strokeWidth: 2,
            child: Container(
              height: 110
                  ,decoration: BoxDecoration(
              color:AppColors.walletbackcolor,
borderRadius: BorderRadius.circular(15)
            ),
              child: Padding(
                padding:  EdgeInsets.only(top:9.0,left: 20.0,right: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
DefaultTextView(text: "Available Balance",fontsize: 14.0,color: AppColors.greyColor,),
                          SizedBox(height: 8.0,),
                          DefaultTextView(text: "AED 78.26",fontsize: 30.0,color: AppColors.blackColor,fontFamily: "popinssemibold",),

                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
Image.asset("assets/icons/card-add.png",height: 18.0,width: 18.0,),
                        SizedBox(width: 10,),
                        DefaultTextView(text: "Top up",fontsize: 14.0,fontFamily: "popinssemibold",color: AppColors.defaultButtonColor,)
                      ],
                    )
                  ],
                ),
              ),
            ),
        )
    ])
    )
    )
    )
    )
    ;
  }
}

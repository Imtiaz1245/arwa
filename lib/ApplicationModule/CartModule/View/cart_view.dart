import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_appbar.dart';
import 'package:arwa/uttils/default_button.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int listItem=10;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.defaultButtonColor,
        body: SafeArea(
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
                          height: 35,
                        ),
                        DefaultAppbar(onpress: () {}, text: "Cart"),
                        SizedBox(
                          height: 35,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [


                                SizedBox(
                                  height: 500,
                                  child: ListView.builder(
                                    padding: EdgeInsets.all(0),
                                    itemCount: listItem,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(bottom: 30.0),
                                        child: Container(

                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.cartItemBackColor,
                                                        borderRadius:
                                                            BorderRadius.circular(3)),
                                                    child: SizedBox(
                                                        child: Image.asset(
                                                      "assets/images/homeimages/botel1.png",
                                                      width: 21,
                                                      height: 30,
                                                    )),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      DefaultTextView(
                                                        text: "Arwa 200ml 1 x 24 PET",
                                                        fontsize: 14.0,
                                                        fontFamily: "popinsMedium",
                                                      ),
                                                      SizedBox(
                                                        height: 9,
                                                      ),
                                                      DefaultTextView(text: "Product ID: 82501700",fontsize: 12.0,color: AppColors.greyColor,),
                                                      SizedBox(height: 17.0,),
                                                      SizedBox(
                                                        width: CustomWidth(context)-110,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            incrementDecrement(),

                                                            DefaultTextView(
                                                                text: "AED 30.00",
                                                              fontsize: 14.0,
                                                              fontFamily: "popinsMedium",)
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 17.0,),
                                                     index==listItem-1?SizedBox(
                                                        height: 10,
                                                        width: CustomWidth(context)-110,
                                                        child: Divider(
                                                          height: 10,
                                                          color: AppColors.greyColor,
                                                        ),
                                                      ):SizedBox()
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 10,
                                  width: CustomWidth(context),
                                  child: DottedLine(dashColor: AppColors.greyColor),
                                ),
                                SizedBox(height: 35,),
                                productPrice(text: "Sub Total",price: "AED 180.00",),
                        
                                SizedBox(height: 17.0,),
                                productPrice(text: "Delivery Fee",price: "AED 20.00",),
                                SizedBox(height: 17.0,),

                                productPrice(text: "Discount",price: "-AED 10.00",textcolor: AppColors.defaultButtonColor,backcolor: AppColors.cartItemBackColor),
                                SizedBox(height: 17.0,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Row(
      children: [
        DefaultTextView(text: "Total",fontsize: 16.0,fontFamily: "popinssemibold",),
        DefaultTextView(text: "(Total)",fontsize: 12.0,color: AppColors.greyColor,),

      ],
    ),
    DefaultTextView(text: "AED 200",color: AppColors.blackColor,   fontsize: 16.0,
      fontFamily: "popinssemibold",),

  ],
),
                                SizedBox(height: 20,),
                                Row(children: [
                                  
                                  Image.asset("assets/images/homeimages/voucher.png",height: 12,width: 17,),
                                  DefaultTextView(text: "Apply Voucher Code",color: AppColors.defaultButtonColor,fontsize: 12.0,fontFamily: "popinsMedium",)
                                ],)
,SizedBox(height: 30.0,),
                                Container(
                                  height: 10,
                                  width: CustomWidth(context),
                                  child: DottedLine(dashColor: AppColors.greyColor),
                                ),
                            SizedBox(height: 30.0,),

                          Row(
                                  children: [
                                    DefaultTextView(text: "By completing this order, I agree to all ",fontsize: 10.0,fontFamily: "popinsMedium",color: AppColors.greyColor,),
                                    DefaultTextView(text: "terms & conditions. ",fontsize: 10.0,fontFamily: "popinsMedium",color: AppColors.defaultButtonColor,),
                                  ],
                                ),
                            SizedBox(height: 40.0,),


                          ],
                            ),
                          ),
                        ),
                      ],
                    ))))
    ,
        bottomSheet:  SizedBox(
          height: 54.0,
          width: CustomWidth(context),
          child: Center(
            child: Padding(
              padding:  EdgeInsets.only(bottom: 8.0),
              child: DefaultButton(height: 54.0,
                width: 315.0,
                borderRadius: 8.0,
                onpress: (){},
                btnColor: AppColors.defaultButtonColor,
                child:DefaultTextView(text: "Review Payment & Address",fontsize: 14.0,fontFamily: "popinsMedium",color: AppColors.whiteColor,)),
            ),
          ),
        )
    );
  }
  Widget incrementDecrement(){
    return  Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              count > 0
                  ? count--
                  : count;
            });
          },
          child: SizedBox(
            height: 30,
            width: 30,
            child: CircleAvatar(
              backgroundColor:
              AppColors
                  .cartItemBackColor,
              backgroundImage:
              AssetImage(count >
                  0
                  ? "assets/images/homeimages/Minus.png"
                  : "assets/images/homeimages/del.png"),
            ),
          ),
        ),
        SizedBox(
          width: 22,
        ),
        DefaultTextView(
            text: "${count}"),
        SizedBox(
          width: 22,
        ),
        InkWell(
          onTap: () {
            setState(() {
              count++;
            });
          },
          child: SizedBox(
            height: 30,
            width: 30,
            child: CircleAvatar(
              backgroundColor:
              AppColors
                  .defaultButtonColor,
              backgroundImage:
              AssetImage(
                  "assets/images/homeimages/cplus.png"),
              foregroundColor:
              AppColors
                  .defaultButtonColor,
            ),
          ),
        ),
      ],
    );

  }
  Widget productPrice({textcolor=AppColors.blackColor,backcolor=AppColors.whiteColor,text,price}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultTextView(text: "${text}",color: AppColors.greyColor,   fontsize: 14.0,
          fontFamily: "popinsMedium",),
        Container(
            height: 25,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: backcolor
            ),
            child: Padding(
              padding:  EdgeInsets.all(1.0),
              child: DefaultTextView(text: "${price}",color: textcolor,   fontsize: 14.0,
                fontFamily: "popinsMedium",),
            )),

      ],);
  }
}

import 'package:arwa/ApplicationModule/CartModule/View/cart_view.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DealsAppbar extends StatelessWidget {
  final text;
  const DealsAppbar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Get.back();

            },
            child:  Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 24,
                          width: 24,
                          child: Image.asset(
                              "assets/images/homeimages/notificationbell.png")),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: SizedBox(
                          height: 8,
                          width: 8,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ),
                    )
                  ],
                )

            )),
          DefaultTextView(text: "${text}",fontsize: 16.0,fontFamily: "popinssemibold",color: AppColors.blackColor,),

          InkWell(
            onTap: (){
              Get.to(CartView(),transition: Transition.rightToLeft);
            },
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 24,
                          width: 24,
                          child: Image.asset(
                              "assets/images/homeimages/carticon.png")),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: SizedBox(
                          height: 8,
                          width: 8,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ),
                    )
                  ],
                )

            ),
          )
        ]
    );
  }
}

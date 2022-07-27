import 'package:arwa/ApplicationModule/HomeModule/View/home_view.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController pageController=PageController()
;
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/botel.png",
              width: CustomWidth(context),
              height: 812,
              fit: BoxFit.fill,
            ),
            Positioned(
                top: 500,
                child: Container(
                  height: 375,
                  width: CustomWidth(context),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        DefaultTextView(
                          text: "Welcome To Arwa",
                          fontsize: 26.0,
                          fontFamily: "popinssemibold",
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 76.0,
                          child: PageView(
                            controller: pageController,
onPageChanged: (val){

  setState(() {
    currentPage=val;
  });
},                            children: [
                              DefaultTextView(
                                text:
                                    "scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic.",
                                fontsize: 12.0,
                                color: AppColors.greyColor,
                              ), DefaultTextView(
                                text:
                                    "scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic.",
                                fontsize: 12.0,
                                color: AppColors.greyColor,
                              ), DefaultTextView(
                                text:
                                    "scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic.",
                                fontsize: 12.0,
                                color: AppColors.greyColor,
                              ),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 8.0,
                              width: 8.0,
                              child: CircleAvatar(
                                backgroundColor:currentPage==0?AppColors.defaultButtonColor:AppColors.greyColor,
                              ),
                            ),
                            SizedBox(width: 8.0,),
                            SizedBox(
                              height: 8.0,
                              width: 8.0,
                              child: CircleAvatar(
                                backgroundColor:currentPage==1?AppColors.defaultButtonColor:AppColors.greyColor,
                              ),
                            ),
                            SizedBox(width: 8.0,),
                            SizedBox(
                              height: 8.0,
                              width: 8.0,
                              child: CircleAvatar(
                                backgroundColor:currentPage==2?AppColors.defaultButtonColor:AppColors.greyColor,
                              ),
                            ),
                            SizedBox(width: 8.0,),

                        ],),
                        SizedBox(height: 30,),
                        DefaultButton(height: 46.0,width: CustomWidth(context),
                        borderRadius: 6.0,
                        onpress: (){
                          pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
                          if(currentPage==2){
                            Get.to(HomeView(),transition: Transition.rightToLeft);

                          }
                        },
                        child: DefaultTextView(text: currentPage!=2?"Next":"Finish",color: AppColors.whiteColor,fontsize: 14.0,),),
                        SizedBox(height: 25.0,),
                        InkWell(
                          onTap: (){
                            Get.to(HomeView(),transition: Transition.rightToLeft);
                          },
                          child: SizedBox(
                              width: CustomWidth(context),
                              child: DefaultTextView(text: "Skip",fontsize: 14.0,color: AppColors.blackColor,fontFamily: "popinsMedium",)),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

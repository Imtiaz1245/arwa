import 'package:arwa/ApplicationModule/AuthenticationModule/View/components/social_signup.dart';
import 'package:arwa/ApplicationModule/AuthenticationModule/View/signup_view.dart';
import 'package:arwa/ApplicationModule/OnBordingModule/View/onboarding_view.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/custom_text_form_field.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/arwabanners.png",
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      height: 30,
                      width: CustomWidth(context),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextView(
                      text: "SignIn to Arwa",
                      fontFamily: "popinssemibold",
                      fontsize: 24.0,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextFormField(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/icons/email.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      hintText: "Username or Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextFormField(
                      ispassword: true,
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/icons/lock.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      hintText: "Password",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (){},
                        child: DefaultTextView(
                          text: "Forgot Password?",
                          fontsize: 12.0,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DefaultButton(
                      height: 46.0,
                      child: DefaultTextView(
                        text: "Sign In",
                        color: AppColors.whiteColor,
                        fontsize: 14.0,
                      ),
                      borderRadius: 6.0,
                      onpress: () {
                        Get.to(OnboardingView(),transition: Transition.rightToLeft);
                      },
                      width: CustomWidth(context),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Get.to(SignUpView(),transition: Transition.rightToLeft);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DefaultTextView(
                              text: "Don’t have an account yet?",
                              color: AppColors.greyColor,
                            ),
                            DefaultTextView(
                              text: "Create an account",
                              color: AppColors.blackColor,
                            ),



                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 37.0,),
                    SocialSignUpView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

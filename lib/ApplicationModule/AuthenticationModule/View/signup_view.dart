import 'package:arwa/ApplicationModule/AuthenticationModule/View/components/circle_profile.dart';
import 'package:arwa/ApplicationModule/AuthenticationModule/View/components/text_form_field.dart';
import 'package:arwa/ApplicationModule/AuthenticationModule/View/signin_view.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/custom_text_form_field.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  List<String> gender = ["Male", "FeMale"];
  String genderChoose = "Gender";
  String cityChoose = "City";
  List<String> city = ["Khanpur", "RahimYar Khan", "Bahawal Pur", "Lahore"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: CustomWidth(context),
              color: AppColors.defaultButtonColor,
            ),
            Container(
              margin: EdgeInsets.only(top: 73),
              height: CustomHeight(context),
              width: CustomWidth(context),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 41,
                    ),
                    ProfileCircle(imageBorderColor: AppColors.imageBack, cameraImage: "assets/icons/camera.png"),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextFormField2(
                          width: 147.0,
                          hintText: "First Name",
                          prefixIcon: Image.asset("assets/icons/profilecircle.png"),
                        ),
                        CustomTextFormField2(
                          width: 147.0,
                          hintText: "First Name",
                          prefixIcon: Image.asset("assets/icons/profilecircle.png"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/icons/username.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      hintText: "Username",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.0,
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
                      hintText: "Email Address",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border:
                              Border.all(width: 1, color: AppColors.greyColor)),
                      child: Row(children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/icons/gender.png",
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              items: gender.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              underline: SizedBox(),
                              hint: DefaultTextView(
                                text: "${genderChoose}",
                                fontsize: 12.0,
                              ),
                              onChanged: (val) {
                                setState(() {
                                  genderChoose = val!;
                                });
                              },
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/icons/company.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      hintText: "Company Name",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border:
                          Border.all(width: 1, color: AppColors.greyColor)),
                      child: Row(children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/icons/city.png",
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              items: city.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              underline: SizedBox(),
                              hint: DefaultTextView(
                                text: "${cityChoose}",
                                fontsize: 12.0,
                              ),
                              onChanged: (val) {
                                setState(() {
                                  cityChoose = val!;
                                });
                              },
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/icons/lock.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      hintText: "Password",
                      ispassword: true,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DefaultButton(
                      height: 46.0,
                      child: DefaultTextView(
                        text: "SignUp",
                        color: AppColors.whiteColor,
                        fontsize: 14.0,
                      ),
                      borderRadius: 6.0,
                      onpress: () {},
                      width: CustomWidth(context),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: (){
                        Get.offAll(SignInView(),transition: Transition.leftToRight);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultTextView(text: "Already have an account?",color: AppColors.greyColor,),
                          DefaultTextView(text: " Sign In",fontweight: FontWeight.bold,),
                        ],
                      ),
                    )               ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

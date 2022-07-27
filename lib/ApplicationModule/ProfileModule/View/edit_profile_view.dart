import 'package:arwa/ApplicationModule/AuthenticationModule/View/components/circle_profile.dart';
import 'package:arwa/ApplicationModule/ProfileModule/View/Components/profile_text_forn_filed.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_appbar.dart';
import 'package:arwa/uttils/default_button.dart';
import 'package:flutter/material.dart';
class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  List<String> gender=["Male","FeMale"];
  String genderChoose="Gender";
  TextEditingController nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.defaultButtonColor,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0))),
          child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              SizedBox(
                height: 35.0,
              ),
              DefaultAppbar(onpress: () {}, text: "Edit Profile"),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  SizedBox(
                  height: 46.0,
                  ),
                    ProfileCircle(imageBorderColor: AppColors.profileImageColor, cameraImage: "assets/images/homeimages/profilecameraicon.png",totalHeight: 113.0,imageHeight: 105.0,)
,SizedBox(height: 37.5,),
                    DefaultTextView(text: "First Name",color: AppColors.greyColor,fontsize: 12.0,),
                    SizedBox(height: 5.0,),

                    ProfileTextFormField(controller: nameController,suffixIcon: "assets/icons/usercircle.png"),
SizedBox(height: 20.0,),   DefaultTextView(text: "Last Name",color: AppColors.greyColor,fontsize: 12.0,),
                    SizedBox(height: 5.0,),

                    ProfileTextFormField(controller: nameController,suffixIcon: "assets/icons/usercircle.png"),
SizedBox(height: 20.0,),

                    DefaultTextView(text: "Username",color: AppColors.greyColor,fontsize: 12.0,),
                    SizedBox(height: 5.0,),
                    ProfileTextFormField(controller: nameController,suffixIcon: "assets/icons/usercircle.png",readOnly: true),
SizedBox(height: 20.0,),  DefaultTextView(text: "Email",color: AppColors.greyColor,fontsize: 12.0,),
                    SizedBox(height: 5.0,),
                    ProfileTextFormField(controller: nameController,suffixIcon: "assets/icons/profileemail.png",readOnly: true),
SizedBox(height: 20.0,),  DefaultTextView(text: "Gender",color: AppColors.greyColor,fontsize: 12.0,),
                    SizedBox(height: 5.0,),
                    Container(
                        height: 50,
                        decoration: BoxDecoration(

                           border: Border(bottom: BorderSide(color: AppColors.greyColor,width: 1))),
                        child: Row(children: [
                          SizedBox(width: 5.0,),
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
                                hint: DefaultTextView(text: "${genderChoose}",color: AppColors.blackColor,fontsize: 14.0,fontFamily: "popinsMedium",),
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
SizedBox(height: 20.0,),  DefaultTextView(text: "Company Name",color: AppColors.greyColor,fontsize: 12.0,),
                    SizedBox(height: 5.0,),
                    ProfileTextFormField(controller: nameController,suffixIcon: "assets/icons/profilecompany.png"),
SizedBox(height: 20.0,),  DefaultTextView(text: "City",color: AppColors.greyColor,fontsize: 12.0,),
                    SizedBox(height: 5.0,),
                    ProfileTextFormField(controller: nameController,suffixIcon: "assets/icons/pcity.png"),
SizedBox(height: 43.0,),
                    DefaultButton(height: 46.0,
                    width: CustomWidth(context),
                    child: DefaultTextView(text: "Update Profile",fontsize: 14.0,fontFamily: "popinsMedium",color: AppColors.whiteColor,),btnColor: AppColors.defaultButtonColor,
                        borderRadius: 8.0,
                        onpress: (){},
                    ),

                        ]
                  ),
                ),
              ),
            ],
          )
          )
          ),
        )
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      nameController.text="Simon";
    });
  }
}

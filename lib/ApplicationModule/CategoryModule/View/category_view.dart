import 'package:arwa/ApplicationModule/CategoryModule/View/Components/category_with_details.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultButtonColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
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
                  height: 35.0,
                ),
                DefaultAppbar(onpress: () {}, text: "Categories"),
                SizedBox(
                  height: 41.0,
                ),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(0.0),
                      shrinkWrap: true,
                      itemCount: 50,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 21.0,
                          mainAxisSpacing: 21.0,
                          mainAxisExtent: 178),
                      itemBuilder: (BuildContext context, index) {
                        return Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10.0),
                          child: InkWell(
                            onTap: (){
                              Get.to(CategoryWithDetailsView(),transition: Transition.rightToLeft);
                            },
                            child: Container(
alignment: Alignment.center,
decoration: BoxDecoration(
  color: AppColors.whiteColor,
  borderRadius: BorderRadius.circular(10.0),

),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 93,
                                  width: 93,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,

                                    color: AppColors.catimageback
                                  ),
                                  child: Image.asset("assets/images/homeimages/botel1.png",height: 60,width: 22,),
                                ),
                                SizedBox(height: 10.0,),
                                DefaultTextView(text: "Arwa",fontsize: 16.0,fontFamily: "popinssemibold",)
                              ],
                            ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

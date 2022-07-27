import 'package:arwa/ApplicationModule/CartModule/View/cart_view.dart';
import 'package:arwa/ApplicationModule/CategoryModule/View/category_view.dart';
import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/deals_and_discount_view.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/brands_list.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/cat_details.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/offer_list_view.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/view_all.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeViewv extends StatefulWidget {
  const HomeViewv({Key? key}) : super(key: key);

  @override
  State<HomeViewv> createState() => _HomeViewvState();
}

class _HomeViewvState extends State<HomeViewv> {
  CarouselController pageController = CarouselController();

  int currentPage = 0;
  List imagegs = [
    "assets/images/homeimages/arwabanner.png",
    "assets/images/homeimages/arwabanner.png",
    "assets/images/homeimages/arwabanner.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 345,
                      width: CustomWidth(context),
                      child: CarouselSlider(
                        carouselController: pageController,
                        items: imagegs.map((e) {
                          return Container(
                            height: 345,
                            width: CustomWidth(context),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "${e}",
                                  ),
                                  fit: BoxFit.fill,
                                )),
                          );
                        }).toList(),
                        options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: 1.0,
                            aspectRatio: 1.0,
                            autoPlayAnimationDuration: Duration(seconds: 1),
                            onPageChanged: (val, reason) {
                              setState(() {
                                currentPage = val;
                              });
                            }),
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: CustomWidth(context),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: imagegs.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: SizedBox(
                                height: 8.0,
                                width: 8.0,
                                child: CircleAvatar(
                                  backgroundColor: currentPage == index
                                      ? AppColors.dotGreenColor
                                      : AppColors.greyColor,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55.0,
                      child: SizedBox(
                        width: CustomWidth(context),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
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
                                ),
                              ),
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ViewAll(
                        text: "Brands",
                        onPress: () {
                          Get.to(CategoryView(),transition: Transition.rightToLeft);
                        },
                        fontSize: 18.0,
                      ),
                      SizedBox(height: 15.0,),
                      BrandsList(),
                      SizedBox(
                        height: 30,
                      ),
                      ViewAll(
                        text: "Deals and Discounts",
                        onPress: () {
                          Get.to(DealsAndDiscountView());

                        },
                        fontSize: 16.0,
                      ),
                      SizedBox(
                        height: 31,
                      ),
                      OffersListView(),
                      SizedBox(height: 30.0,),
                      HomeCatDetails(),
                      SizedBox(
                        height: 30,
                      ),
                      HomeCatDetails(),
                      SizedBox(
                        height: 30,
                      ),
                      ViewAll(
                        text: "New Arrivals",
                        onPress: () {},
                        fontSize: 16.0,
                      ),
                      SizedBox(
                        height: 31,
                      ),
                      HomeCatDetails(),


                      SizedBox(
                        height: 30,
                      ),
                      ViewAll(
                        text: "Favourite",
                        onPress: () {},
                        fontSize: 16.0,
                      ),
                      SizedBox(
                        height: 31,
                      ),
                      HomeCatDetails(),


                    ]),
              ]),
        ));
  }
}

import 'package:arwa/ApplicationModule/CategoryModule/View/Components/cat_grid_view.dart';
import 'package:arwa/ApplicationModule/HomeModule/View/Components/cat_details.dart';
import 'package:arwa/ApplicationModule/ProductsDetailsModule/View/Components/app_bar_product_details.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  int current_index = 0;
  int itemNo=01;
  List imagegs = [
    "assets/images/homeimages/arwabanner.png",
    "assets/images/homeimages/arwabanner.png",
    "assets/images/homeimages/arwabanner.png"
  ];
  CarouselController pageController = CarouselController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
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
    child:

   AppBarProductDetails(),



    ),
    ),
    ),

    Positioned(
    bottom: 0.0,
    child: Container(
    height: 32,
    width: CustomWidth(context),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0))),

    ),
    ),
      Positioned(
          bottom: 0.0,
          right: 20,
          child: Image.asset("assets/images/homeimages/fav.png",height: 54.0,width: 54.0,)),
    ],
    ),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            DefaultTextView(text: "Arwa 200ml 1 x 24 PET",fontsize: 20.0,fontFamily: "popinssemibold",),
            SizedBox(height: 12.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultTextView(text: "AED 15.00",fontsize: 20.0,fontFamily: "popinssemibold",color: AppColors.defaultButtonColor,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        if(itemNo>1){
                          itemNo=itemNo-1;
                        }
                      });
                    },
                    child: Image.asset("assets/images/homeimages/Minus.png",height: 30,width: 30,),
                  ),
                  SizedBox(width: 13.0,),
                  DefaultTextView(text: "${itemNo}",fontFamily: "popinssemibold",fontsize: 18.0,),
                  SizedBox(width: 13.0,),
                  InkWell(
                    onTap: (){
                      setState(() {

                        itemNo=itemNo+1;
                      });
                    },
                    child: Image.asset("assets/images/homeimages/Plus.png",height: 30,width: 30,),
                  ),
                ],
              )

              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: CustomWidth(context),
              child: Divider(
                color: AppColors.greyColor,

              ),
            ),
            SizedBox(height: 20,),
            DefaultTextView(text: "Description",fontsize: 16.0,fontFamily: "popinssemibold",),
            SizedBox(height: 15,),
            DefaultTextView(text: "Tellus, nunc at enim turpis auctor purus amet urna facibus. Enim laoreet fringilla tempor, odio arcu. Viverra nec etiam habitant rutrum at donec honcus sociis nunc at enim turpis auctor purus.",fontsize: 12.0,textAlign: TextAlign.start,),
            SizedBox(height: 20,),
            DefaultTextView(text: "Related Products",fontsize: 16.0,fontFamily: "popinssemibold",),
            SizedBox(height: 15,),

            SizedBox(height: 20,),
            HomeCatDetails(),
            SizedBox(height: 100,),

          ],
        ),
      ),

    ]
    )
    )),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Row(children: [
                  Image.asset("assets/images/homeimages/cartwhitecol.png",height: 24,width: 24,),
                  SizedBox(width: 10.0,),
                  DefaultTextView(text: "Add to Cart",fontsize: 14.0,color: AppColors.whiteColor,fontFamily: "popinsMedium",)

                ],),
                Container(
                  alignment: Alignment.center,
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      shape: BoxShape.circle
                  ),
                  child: DefaultTextView(text: "2",color: AppColors.blackColor,fontFamily: "popinsMedium",fontsize: 12.0,),
                )
              ],
            ),),
        ),
      ),
    )
    );
  }
}

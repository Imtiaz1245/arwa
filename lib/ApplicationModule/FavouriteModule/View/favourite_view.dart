import 'package:arwa/ApplicationModule/OrderHistoryModule/View/Components/items_view.dart';
import 'package:arwa/ApplicationModule/ProductsDetailsModule/View/product_details.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class FavouriteView extends StatefulWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
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
    DefaultAppbar(onpress: () {}, text: "My Favourites "),
    SizedBox(
    height: 41.0,
    ),
      Expanded(child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(bottom: 20.0,left: 2,right: 2),
          child: Material(
            borderRadius: BorderRadius.circular(14.0),
            color: AppColors.whiteColor,
            elevation: 3.0,

            child: InkWell(
              onTap: (){
                Get.to(ProductDetailsView(),transition: Transition.rightToLeft);
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  color: AppColors.whiteColor,
                ),
                child: Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        singleItem(height:80.0, widht:80.0, imageHeight: 63.0, imageWidth: 25.0),
                        Padding(
                          padding:  EdgeInsets.only(left: 14.0,top: 17.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultTextView(text: "1 x 24 PET",fontsize: 12.0,color: AppColors.greyColor,),
                              DefaultTextView(text: "Arwa 200ml",fontsize: 16.0,fontFamily: "popinssemibold",),
                              DefaultTextView(text: "AED 15.00",fontsize: 14.0,fontFamily: "popinssemibold",color: AppColors.defaultButtonColor,),

                            ],
                          ),
                        )

                      ],
                    ),
                      Image.asset("assets/images/homeimages/fav.png",height: 32,width: 32,)
                  ],),
                ),
              ),
            ),
          ),
        );
      },))
    ]
    )
    )
    )
    )
    );
  }
}

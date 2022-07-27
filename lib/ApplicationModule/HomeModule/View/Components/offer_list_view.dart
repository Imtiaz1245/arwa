import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/deals_and_discount_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OffersListView extends StatelessWidget {
  const OffersListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 88,
    child: ListView.builder(

      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {

      return Padding(
        padding:  EdgeInsets.only(left: 23.0),
        child: InkWell(
          onTap: (){

          },
          child: Container(
            height: 88,
            width: 229,
            decoration: BoxDecoration(
image: DecorationImage(
  image: AssetImage("assets/images/homeimages/offer.png"),
)
            ),
          ),
        ),
      );
    },),
    );
  }
}

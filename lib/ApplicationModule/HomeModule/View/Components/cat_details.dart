import 'package:arwa/ApplicationModule/CategoryModule/View/Components/cat_product_details.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:flutter/material.dart';
class HomeCatDetails extends StatelessWidget {
  const HomeCatDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 228.0,
      width: CustomWidth(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        padding: EdgeInsets.all(0),
        itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(left: 15.0),
          child: CatProductDetails(index: 14),
        );

      },),
    );
  }
}

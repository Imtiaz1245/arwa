import 'package:arwa/ApplicationModule/CategoryModule/View/Components/cat_product_details.dart';
import 'package:arwa/ApplicationModule/ProductsDetailsModule/View/product_details.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CatGridView extends StatefulWidget {
  final itemCount;
  const CatGridView({Key? key, required this.itemCount}) : super(key: key);

  @override
  State<CatGridView> createState() => _CatGridViewState();
}

class _CatGridViewState extends State<CatGridView> {
  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
        itemCount: widget.itemCount,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,

    crossAxisSpacing: 21.0,
    mainAxisSpacing: 21.0,
    mainAxisExtent: 245),
    itemBuilder: (BuildContext context, index) {
      return InkWell(
          onTap: (){
            Get.to(ProductDetailsView(),transition: Transition.rightToLeft);
          },
          child: CatProductDetails(index: index));
    }
    );
  }
}

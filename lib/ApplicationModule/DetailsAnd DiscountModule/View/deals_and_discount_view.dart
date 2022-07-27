import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/Components/appbar_deals.dart';
import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/Components/deals_and_discount.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:flutter/material.dart';

import '../../../uttils/default_appbar.dart';
class DealsAndDiscountView extends StatefulWidget {
  const DealsAndDiscountView({Key? key}) : super(key: key);

  @override
  State<DealsAndDiscountView> createState() => _DealsAndDiscountViewState();
}

class _DealsAndDiscountViewState extends State<DealsAndDiscountView> {
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
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
          children: [
          SizedBox(
          height: 35.0,
          ),
            DealsAppbar(text: "Deals And Discount"),    SizedBox(
          height: 41.0,
          ),
            Expanded(
                child: DealsAndDiscountListView()),
          ]
          )
          )
          ),
        )
    );
  }
}

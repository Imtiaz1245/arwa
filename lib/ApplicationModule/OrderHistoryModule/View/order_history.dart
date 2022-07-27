import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/Components/appbar_deals.dart';
import 'package:arwa/ApplicationModule/DetailsAnd%20DiscountModule/View/Components/deals_and_discount.dart';
import 'package:arwa/ApplicationModule/OrderHistoryModule/View/Components/orders_list_view.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:flutter/material.dart';
class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
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
                        DealsAppbar(text: "Order History"),    SizedBox(
                          height: 41.0,
                        ),
                        OrderListView()
                      ]
                  )
              )
          ),
        )
    );
  }
}

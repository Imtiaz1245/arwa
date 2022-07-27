import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DealsAndDiscountListView extends StatelessWidget {
  const DealsAndDiscountListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {

        return Padding(
          padding:  EdgeInsets.only(bottom: 20.0),
          child: InkWell(
            onTap: (){
            },
            child: Container(
              height: 150,
              width: 335,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/homeimages/offer.png",),
                    fit: BoxFit.fill
                  )
              ),
            ),
          ),
        );
      },);
  }
}

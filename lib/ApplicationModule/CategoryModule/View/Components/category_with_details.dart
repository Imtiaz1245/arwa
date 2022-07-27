import 'package:arwa/ApplicationModule/CategoryModule/View/Components/cat_grid_view.dart';
import 'package:arwa/uttils/colors.dart';
import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:arwa/uttils/defaultTextView.dart';
import 'package:arwa/uttils/default_appbar.dart';
import 'package:flutter/material.dart';
class CategoryWithDetailsView extends StatefulWidget {
  const CategoryWithDetailsView({Key? key}) : super(key: key);

  @override
  State<CategoryWithDetailsView> createState() => _CategoryWithDetailsViewState();
}

class _CategoryWithDetailsViewState extends State<CategoryWithDetailsView> with SingleTickerProviderStateMixin {
  TabController? tabController;
  int currentIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController= TabController(length: 8, vsync: this);
  }

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
                DefaultAppbar(onpress: () {}, text: "Arwa"),
                SizedBox(
                  height: 31.0,
                ),
                Container(height: 35,
                width: CustomWidth(context),
               child: TabBar(
                 controller: tabController,
                 labelColor: AppColors.whiteColor,
                 unselectedLabelColor: AppColors.greyColor,
                 onTap: (val){
                   setState(() {
                     currentIndex=val;
                   });
                 },
                 tabs: [
Text("All",style: TextStyle(),),
Text("220 ml",style: TextStyle(),),
Text("250 ml",style: TextStyle(),),
Text("1000 ml",style: TextStyle(),),
Text("All",style: TextStyle(),),
Text("All",style: TextStyle(),),
Text("All",style: TextStyle(),),
Text("All",style: TextStyle(),),
               ],
isScrollable: true,
                 indicator: BoxDecoration(

  color: AppColors.defaultButtonColor,
  borderRadius: BorderRadius.circular(8.0),

                 ),
               ),
                ),
              SizedBox(height: 40,),
              currentIndex==0?Expanded(child: CatGridView(itemCount: 20,)):Expanded(child: CatGridView(itemCount: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

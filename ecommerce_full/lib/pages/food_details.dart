import 'package:ecommerce_full/app_fonts.dart';
import 'package:ecommerce_full/bigtext.dart';
import 'package:ecommerce_full/circle_icon_widget.dart';
import 'package:ecommerce_full/item_detail_column.dart';
import 'package:ecommerce_full/smallText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expandable_text/expandable_text.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 300.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/jewel.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleIcon(icon: Icons.arrow_back),
                CircleIcon(icon: Icons.shopping_cart),
              ],
            ),
          ),
          Positioned(
            top: 260,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 10),
              height: 300.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemDetailColumn(
                    itemName: 'Bangles',
                    fontSize: 20.sp,
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: BigText(
                      text: 'Details',
                      size: 15.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ExpandableText(
                          'love hdkjhfkhfgh hkhkhg jjjgaawiohgajjjiufhahgahgiagfhjhgiuhyiuyhiuhyasdfghiiuygfjhjhfghjkhh hdkjhfkhfgh hkhkhg jjjgaawiohgajjjiufhahgahgiagfhjhgiuhyiuyhiuhyasdfghiiuygfjhjhfghjkhh hdkjhfkhfgh hkhkhg jjjgaawiohgajjjiufhahgahgiagfhjhgiuhyiuyhiuhyasdfghiiuygfjhjhfghjkhh hdkjhfkhfgh hkhkhg jjjgaawiohgajjjiufhahgahgiagfhjhgiuhyiuyhiuhyasdfghiiuygfjhjhfghjkhh hdkjhfkhfgh hkhkhg jjjgaawiohgajjjiufhahgahgiagfhjhgiuhyiuyhiuhyasdfghiiuygfjhjhfghjkhh',
                          style: TextStyle(
                            fontSize: 11,
                            color: Appcolors.mainBlackColor,
                            height: 1.5,
                          ),
                          expandText: '\n \nshow more',
                          collapseText: '\n \nshow less',
                          maxLines: 3,
                          linkColor: Appcolors.mainColor,
                          linkEllipsis: false,
                          linkStyle: TextStyle(fontSize: 12),
                          animation: true,
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 80,
        decoration: BoxDecoration(
          color: Appcolors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
              height: 40.h,
              width: 70.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove,
                    size: 15.sp,
                  ),
                  const BigText(text: '0'),
                  Icon(
                    Icons.add,
                    size: 15.sp,
                  ),
                ],
              ),
            ),
            Container(
              height: 35,
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Appcolors.mainColor,
                  borderRadius: BorderRadius.circular(10)),
              child: BigText(
                text: "\$ | add to cart",
                size: 15.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

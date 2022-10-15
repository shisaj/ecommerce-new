import 'package:ecommerce_full/app_fonts.dart';
import 'package:ecommerce_full/bigtext.dart';
import 'package:ecommerce_full/food_page_body.dart';
import 'package:ecommerce_full/smallText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(
                          text: 'India',
                          color: Appcolors.mainColor,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.w),
                          child: Row(
                            children: [
                              SmallText(
                                text: 'kannur',
                                size: 10.sp,
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 20.sp,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: Appcolors.mainColor,
                          borderRadius: BorderRadiusDirectional.circular(10.r)),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 15.sp,
                      ),
                    )
                  ],
                ),
              ),
              const FoodPageBody()
            ],
          ),
        ),
      ),
    );
  }
}

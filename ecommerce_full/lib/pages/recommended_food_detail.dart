import 'package:ecommerce_full/app_fonts.dart';
import 'package:ecommerce_full/bigtext.dart';
import 'package:ecommerce_full/circle_icon_widget.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
            // physics: const BouncingScrollPhysics(
            //     parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverAppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleIcon(icon: Icons.clear),
                    CircleIcon(icon: Icons.shopping_cart)
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(38),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                      ),
                    ),
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    width: double.maxFinite,
                    child: Center(
                      child: BigText(
                        text: 'Bangles details',
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
                elevation: 10,
                pinned: true,
                floating: false,
                backgroundColor: Appcolors.yellowColor,
                expandedHeight: 250.h,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/jewel1.jpg',
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverFillViewport(
                viewportFraction: 1.2,
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ExpandableText(
                      'jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldjjfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj jfgjlgjljglj atgeitkerkt jljl iatjjgkldjgjoiuojhjlkjlkajhaoihyohjlkjbjfjftuegjldj',
                      expandText: '\n\nShow more',
                      collapseText: '\n\nShow less',
                      textAlign: TextAlign.justify,
                      style: TextStyle(height: 1.5.sp),
                      maxLines: 4,
                      linkEllipsis: false,
                    ),
                  );
                }, childCount: 1),
              )
            ],
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 45, right: 45, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleIcon(
                      icon: Icons.remove,
                      backGroundColor: Appcolors.mainColor,
                      iconColor: Colors.white,
                    ),
                    const BigText(text: '\$ 12.80 ' + "x " + '0'),
                    CircleIcon(
                      icon: Icons.add,
                      backGroundColor: Appcolors.mainColor,
                      iconColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3, vertical: 2),
                      height: 40.h,
                      width: 40.w,
                      child: Icon(
                        Icons.favorite,
                        size: 15.sp,
                        color: Appcolors.mainColor,
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
            ],
          )),
    );
  }
}

import 'package:ecommerce_full/app_fonts.dart';
import 'package:ecommerce_full/bigtext.dart';
import 'package:ecommerce_full/circle_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
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
                preferredSize: const Size.fromHeight(20),
                child: Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  width: double.maxFinite,
                  color: Colors.white,
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
            const SliverToBoxAdapter(
              child: Text(
                  'kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv kfkjhkhf jgja jjg jjgfjaoiqt  y87qtehgfdf jjioug bh  fhhgaqigyiy v hjhhiuyuiytnv '),
            ),
          ],
        ),
      ),
    );
  }
}

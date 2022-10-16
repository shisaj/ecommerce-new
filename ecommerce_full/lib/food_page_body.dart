import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_full/app_fonts.dart';
import 'package:ecommerce_full/bigtext.dart';
import 'package:ecommerce_full/icon_text_widget.dart';
import 'package:ecommerce_full/item_detail_column.dart';
import 'package:ecommerce_full/smallText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currentPageValue = 0.0;
  double scaleFactor = 0.8;
  double height = 180.h;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
  }

  @override
  // ignore: must_call_super
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250.h,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return buildPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: currentPageValue,
          decorator: DotsDecorator(
            color: Appcolors.mainColor,
            activeColor: Appcolors.iconColor2,
            size: Size.square(8.0.sp),
            activeSize: Size(18.0.sp, 9.0.sp),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0.r)),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const BigText(text: 'Popular'),
              SizedBox(
                width: 8.w,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: '.',
                  color: Appcolors.paraColor,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: const SmallText(text: 'Food pairing'),
              ),
            ],
          ),
        ),
        //images and details
        Container(
          margin: EdgeInsets.only(top: 25),
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 8),
                  child: Row(
                    children: [
                      Container(
                        //image container
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/images/jewel1.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.grey.shade300),
                        height: 120.h,
                        width: 120.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 100.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.r),
                                  bottomRight: Radius.circular(10.r)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(
                                    text: 'bangles for ladies and children'),
                                SmallText(
                                  text: 'import from calcutta',
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconTextWidget(
                                        icon: Icons.circle,
                                        text: 'Normal',
                                        iconColor: Appcolors.iconColor1),
                                    IconTextWidget(
                                        icon: Icons.location_on,
                                        text: '1.7km',
                                        iconColor: Appcolors.mainColor),
                                    IconTextWidget(
                                        icon: Icons.access_time,
                                        text: '1.7km',
                                        iconColor: Appcolors.iconColor2),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      //details of images
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  // page builder function

  Widget buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();

    if (index == currentPageValue.floor()) {
      var currentScaleValue =
          1 - (currentPageValue - index) * (1 - scaleFactor);

      var currTrans = height * (1 - currentScaleValue) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScaleValue, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var currentScaleValue =
          scaleFactor + (currentPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currentScaleValue) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScaleValue, 1);
      matrix = Matrix4.diagonal3Values(1, currentScaleValue, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() - 1) {
      var currentScaleValue =
          1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currentScaleValue) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScaleValue, 1);
      matrix = Matrix4.diagonal3Values(1, currentScaleValue, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currentScaleValue = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScaleValue, 1)
        ..setTranslationRaw(0, height * (1 - currentScaleValue) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          height: 180.h,
          margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: index.isEven
                  ? const Color(0xFF69c5DF)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                  image: AssetImage('assets/images/jewel.jpg'),
                  fit: BoxFit.cover)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 100.h,
              margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 15.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFe8e8e8),
                      offset: Offset(0, 8.r),
                      blurRadius: 5.0.r,
                      blurStyle: BlurStyle.inner,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5.r, 0.r),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5.r, 0.r),
                    )
                  ]),
              child: ItemDetailColumn(
                itemName: 'Bangles',
                fontSize: 15,
              )),
        ),
      ]),
    );
  }
}

import 'package:ecommerce_full/app_fonts.dart';
import 'package:ecommerce_full/icon_text_widget.dart';
import 'package:ecommerce_full/smallText.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currentPageValue = 0.0;
  double scaleFactor = 0.8;
  double height = 180;

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
    return Container(
      height: 250,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return buildPageItem(position);
          }),
    );
  }

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
          height: 180,
          margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
            height: 100,
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    offset: Offset(0, 8),
                    blurRadius: 5.0,
                    blurStyle: BlurStyle.inner,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  )
                ]),
            child: Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Bangles'),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: Appcolors.mainColor,
                            size: 15,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '4.5'),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '1287'),
                      const SizedBox(
                        width: 5,
                      ),
                      SmallText(text: 'comments'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconTextWidget(
                          icon: Icons.circle,
                          text: 'Normal',
                          iconColor: Appcolors.iconColor1),
                      const SizedBox(
                        width: 25,
                      ),
                      IconTextWidget(
                          icon: Icons.location_on,
                          text: '1.7km',
                          iconColor: Appcolors.mainColor),
                      const SizedBox(
                        width: 25,
                      ),
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
        ),
      ]),
    );
  }
}

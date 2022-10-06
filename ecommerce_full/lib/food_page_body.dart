import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
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
    return Stack(children: [
      Container(
        height: 170,
        margin: EdgeInsets.only(left: 5, right: 5, top: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index.isEven ? Color(0xFF69c5DF) : Color(0xFF9294cc),
            image: DecorationImage(
                image: AssetImage('assets/images/jewel.jpg'),
                fit: BoxFit.cover)),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 100,
          margin: EdgeInsets.only(left: 25, right: 25, bottom: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}

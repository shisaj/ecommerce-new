import 'package:ecommerce_full/app_fonts.dart';
import 'package:ecommerce_full/bigtext.dart';
import 'package:ecommerce_full/food_page_body.dart';
import 'package:ecommerce_full/smallText.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
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
                        margin: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: const [
                            SmallText(
                              text: 'kannur',
                              size: 10,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Appcolors.mainColor,
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 15,
                    ),
                  )
                ],
              ),
            ),
            const FoodPageBody()
          ],
        ),
      ),
    );
  }
}

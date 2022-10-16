import 'package:ecommerce_full/app_fonts.dart';
import 'package:ecommerce_full/bigtext.dart';
import 'package:ecommerce_full/icon_text_widget.dart';
import 'package:ecommerce_full/smallText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDetailColumn extends StatelessWidget {
  final String itemName;
  final double? fontSize;
  const ItemDetailColumn({Key? key, required this.itemName, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemName,
            style: TextStyle(fontSize: fontSize),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              Wrap(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    color: Appcolors.mainColor,
                    size: 15.sp,
                  );
                }),
              ),
              SizedBox(
                width: 10.w,
              ),
              const SmallText(text: '4.5'),
              SizedBox(
                width: 10.w,
              ),
              const SmallText(text: '1287'),
              SizedBox(
                width: 5.w,
              ),
              const SmallText(text: 'comments'),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          SizedBox(
            height: 20.h,
          ),
          BigText(text: 'Details'),
          SizedBox(
            height: 10.h,
          ),
          SmallText(
              text:
                  'hjjgljafg jlkjlkajg jgj \njjfgagjajg jjhvaj \njfoiauegjajgaj')
        ],
      ),
    );
  }
}

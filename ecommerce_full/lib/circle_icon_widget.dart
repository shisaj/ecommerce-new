import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  Color iconColor;
  double size;
  Color backGroundColor;
  CircleIcon(
      {Key? key,
      required this.icon,
      this.iconColor = const Color(0xFF756d54),
      this.size = 30,
      this.backGroundColor = const Color(0xFFfcf4e4)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: backGroundColor),
      child: Icon(
        icon,
        size: 15.sp,
        color: iconColor,
      ),
    );
  }
}

import 'package:ecommerce_full/app_fonts.dart';
import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final double textsize = 10;
  final double iconsize = 15;
  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: iconsize,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(fontSize: textsize, color: Appcolors.paraColor),
        ),
      ],
    );
  }
}

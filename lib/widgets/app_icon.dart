import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery_flutter/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon; // for passing icon must use IconData. Can not use Icon
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;

  AppIcon({
    Key? key,
    required this.icon,
    this.backgroundColor = const Color(
        0xFFfcf4e4), // must use const value. can not use color from colors.dart
    this.iconColor = const Color(
        0xFF756d54), // must use const value. can not use color from colors.dart
    this.size = 40,
    this.iconSize = 16,
    // must use const value. can not use Dimensions.dart
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size <= 0 ? Dimensions.height45 : size * Dimensions.height1,
      width: size <= 0 ? Dimensions.width45 : size * Dimensions.width1,
      decoration: BoxDecoration(
        borderRadius: size <= 0
            ? BorderRadius.circular(Dimensions.height45 / 2)
            : BorderRadius.circular(size * Dimensions.height1 / 2),
        color: backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: size <= 0
                ? Dimensions.iconSize16
                : (iconSize) * Dimensions.width1,
          )
        ],
      ),
    );
  }
}

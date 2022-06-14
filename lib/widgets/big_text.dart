import 'package:flutter/cupertino.dart';
import 'package:food_delivery_flutter/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color; // Color for Big Text
  final String text;
  double size;
  TextOverflow overFlow;

  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 0,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size <= 0 ? Dimensions.font20 : size * Dimensions.font1,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

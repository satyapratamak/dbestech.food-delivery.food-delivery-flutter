import 'package:flutter/cupertino.dart';
import 'package:food_delivery_flutter/utils/dimensions.dart';
import 'package:food_delivery_flutter/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData
      icon; // Method to pass Icon. Can not pass Icon as parameter so using IconData
  final String text;

  final Color iconColor;
  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconSize24),
        SizedBox(width: Dimensions.width5),
        SmallText(text: text),
      ],
    );
  }
}

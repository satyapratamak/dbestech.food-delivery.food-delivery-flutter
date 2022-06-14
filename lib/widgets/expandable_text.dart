import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_flutter/utils/colors.dart';
import 'package:food_delivery_flutter/utils/dimensions.dart';
import 'package:food_delivery_flutter/widgets/big_text.dart';
import 'package:food_delivery_flutter/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String headText; // Head Text that will appear when minimized
  late String
      tailText; // Additional Text that will be added to headText when expanded

  bool isHiddenText = true;

  double textHeight = Dimensions.screenHight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      // need to be expanded
      headText = widget.text.substring(0, textHeight.toInt());
      tailText = widget.text.substring(textHeight.toInt(), widget.text.length);
    } else {
      // do need to be expanded
      headText = widget.text;
      tailText = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: tailText == ""
          ? SmallText(text: widget.text)
          : Column(
              children: [
                isHiddenText
                    ? SmallText(
                        text: headText + "...",
                        size: Dimensions.font16,
                        color: AppColors.paraColor,
                        height: 1.8)
                    : SmallText(
                        text: widget.text,
                        size: Dimensions.font16,
                        color: AppColors.paraColor,
                        height: 1.8),
                SizedBox(height: Dimensions.height1 * 5),
                InkWell(
                  onTap: () {
                    setState(() {
                      isHiddenText = !isHiddenText;
                    });
                  },
                  child: Row(
                      children: isHiddenText
                          ? [
                              SmallText(
                                  text: "Show more",
                                  color: AppColors.mainColor,
                                  size: Dimensions.font16),
                              Icon(Icons.arrow_drop_down,
                                  color: AppColors.mainColor,
                                  size: Dimensions.font16),
                            ]
                          : [
                              SmallText(
                                  text: "Show less",
                                  color: AppColors.mainColor,
                                  size: Dimensions.font16),
                              Icon(Icons.arrow_drop_up,
                                  color: AppColors.mainColor,
                                  size: Dimensions.font16),
                            ]),
                ),
              ],
            ),
    );
  }
}

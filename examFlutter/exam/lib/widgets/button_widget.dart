import 'package:flutter/material.dart';
import 'package:exam/core/constant/color_palette.dart';

class ButtonNext extends StatelessWidget{
  double? width;
  bool? isReponsive;
  double? height;
  ButtonNext({super.key,
    this.width,
    this.isReponsive = false,
    this.height = 50
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: ColorPalette.primaryColor
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.keyboard_double_arrow_right_outlined, size: 14, color: Colors.white,
          ),
          Icon(
            Icons.keyboard_double_arrow_right_outlined, size: 18, color: Colors.white,
          ),
          Icon(
            Icons.keyboard_double_arrow_right_outlined, size: 22, color: Colors.white,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';

class TextInputField extends StatelessWidget {
  final double box_width;
  final double box_height;
  final double textSize;
  final int line;
  final String label;
  final TextEditingController controller;
  const TextInputField(
      {this.label = "",
      super.key,
      required this.controller,
      required this.box_width,
      required this.box_height,
      required this.line, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: box_width,
      height: box_height,
      child: TextField(
        controller: controller,
        maxLines: line,
        style:  TextStyle(
          color: textColor1,
          fontFamily: 'Poppins-Regular',
          fontSize: textSize,
        ),
        decoration: InputDecoration(
          hintText: label, // label goes here
          hintStyle: const TextStyle(
            color: textColor2,
            fontFamily: 'Poppins-Light',
            fontSize: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: buttonColor,
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.customText,
    required this.customOnPressed,
    this.elevation = 2,
    this.customPadding = const EdgeInsets.only(right: 3, bottom: 3),
    this.w600 = FontWeight.w600,
    this.radius = 50,
    this.customSize = const Size(double.infinity, 60),
    this.buttonBackgroundColor = Colors.black,
    this.fontSize = 18,
    this.textColor = Colors.white,
  });

  final EdgeInsets customPadding;
  final Null Function() customOnPressed;
  final Size customSize;
  final Color buttonBackgroundColor;
  final double elevation;
  final double radius;
  final String customText;
  final FontWeight w600;
  final double fontSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: customPadding,
      child: ElevatedButton(
        onPressed: customOnPressed,
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
            customSize,
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(buttonBackgroundColor),
          elevation: MaterialStateProperty.all<double>(elevation),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius))),
        ),
        child: Text(
          customText,
          style: TextStyle(
            fontWeight: w600,
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

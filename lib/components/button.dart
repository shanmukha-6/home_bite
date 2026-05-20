import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Button extends StatelessWidget {
  final String ButtonText;
  final Color ButtonColor;
  final VoidCallback ButtononTap;

  const Button({
    super.key,
    required this.ButtonText,
    required this.ButtonColor,
    required this.ButtononTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(77.w, 4.8.h),
        backgroundColor: ButtonColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(17),
        ),
      ),
      onPressed: ButtononTap,
      child: Text(ButtonText, style: TextStyle(fontSize: 16.sp)),
    );
  }
}

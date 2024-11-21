import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/theme/app_colors.dart';

class CustomButton extends ConsumerWidget {
  String title;
  VoidCallback onPressed;

  CustomButton(this.title, this.onPressed);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            child: Center(
                child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ))));
  }
}

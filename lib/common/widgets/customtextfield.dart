import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/theme/app_colors.dart';

class CustomTextField extends ConsumerWidget {
  String title;
  String hintTitle;
  TextEditingController controller;
  bool isPassword;

  CustomTextField(this.hintTitle, this.controller, {this.title = "",this.isPassword = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: TextFormField(
            obscureText: isPassword,
              controller: controller,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  hintText: hintTitle,
                  fillColor: Colors.black.withOpacity(.05),
                  filled: true,
                  hintStyle: TextStyle(
                      color: AppColors.secondaryTextColor, fontSize: 15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent)))),
        ),
      ],
    );
  }
}

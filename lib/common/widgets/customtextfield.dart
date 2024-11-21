import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/theme/app_colors.dart';

class CustomTextField extends ConsumerStatefulWidget {
  final String title;
  final String hintTitle;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isPassword;
  bool showPassword = false;

  CustomTextField(this.hintTitle, this.controller,
      {this.title = "",
      this.isPassword = false,
      this.inputType = TextInputType.text});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => CustomTextFieldState();
}

class CustomTextFieldState extends ConsumerState<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            widget.title,
            style: TextStyle(color: AppColors.secondaryColor, fontSize: 15,fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: TextFormField(
              keyboardType: widget.inputType,
              obscureText: widget.isPassword ? !widget.showPassword : false,
              controller: widget.controller,
              style: TextStyle(color: Colors.black),
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  suffixIcon: widget.isPassword
                      ? GestureDetector(
                          onTap: () {
                            widget.showPassword = !widget.showPassword;
                            setState(() {});
                          },
                          child: Icon(
                            widget.showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        )
                      : null,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  hintText: widget.hintTitle,
                  fillColor: AppColors.secondaryColor.withOpacity(0.1),
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

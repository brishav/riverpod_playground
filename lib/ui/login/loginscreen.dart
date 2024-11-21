import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/common/widgets/customtextfield.dart';
import 'package:riverpod_playground/globals.dart';
import 'package:riverpod_playground/theme/app_colors.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static var routeName = "/loginscreen";

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                appLogo,
                width: 150,
                height: 150,
              ),
            ),
            Text(
              appName,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            CustomTextField(
              "Username",
              TextEditingController(),
              title: "Username",
            ),
            CustomTextField(
              "Password",
              TextEditingController(),
              title: "Password",
              isPassword: true,
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(8.0),
              child: Text("Forget Password"),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ))))
          ],
        ),
      ),
    );
  }
}

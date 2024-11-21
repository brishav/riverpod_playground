import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_playground/common/widgets/custombutton.dart';
import 'package:riverpod_playground/common/widgets/customtextfield.dart';
import 'package:riverpod_playground/globals.dart';
import 'package:riverpod_playground/theme/app_colors.dart';
import 'package:riverpod_playground/ui/dashboard/dashboardscreen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static var routeName = "/loginscreen";

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  void onLoginClicked() {
    context.go(DashboardScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image.asset(
                    appLogo,
                    width: 120,
                    height: 120,
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
                CustomButton(
                  "Login",
                  () {
                    onLoginClicked();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          visualDensity: VisualDensity.compact,
                          onPressed: () {},
                          icon: Image.asset(
                            apple,
                            width: 36,
                          )),
                      IconButton(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          visualDensity: VisualDensity.compact,
                          onPressed: () {},
                          icon: Image.asset(
                            google,
                            width: 35,
                          ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

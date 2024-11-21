import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_playground/globals.dart';
import 'package:riverpod_playground/theme/app_colors.dart';
import 'package:riverpod_playground/ui/login/loginscreen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  static var routeName = "/";

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Timer(
          Duration(seconds: splashTimer),
          () {
            context.go(LoginScreen.routeName);
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Image.asset(
          appLogo,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

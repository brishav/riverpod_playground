import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider =
    ChangeNotifierProvider<LoginProvider>((ref) => LoginProvider());

class LoginProvider with ChangeNotifier {

}

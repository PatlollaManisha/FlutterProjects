import 'package:flutter/material.dart';
import 'package:flutter_project/utils/Routes/appRoutes.dart';
import 'package:flutter_project/view/login.dart';
import 'package:flutter_project/view/mpin.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.login: (context) => LoginPage(),
      AppRoutes.mpin: (context) => MPIN_Page(),
    };
  }
}

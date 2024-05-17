import 'package:delsocora_flutter_app/home_page.dart';
import 'package:delsocora_flutter_app/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:delsocora_flutter_app/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist', scaffoldBackgroundColor: AppColor.background),
      home: LoginPage(),
    );
  }
}

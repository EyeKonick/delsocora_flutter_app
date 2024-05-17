import 'package:delsocora_flutter_app/styles/app_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Home Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to Flutter Home Page',
          style: TextStyle(fontSize: 24.0, color: AppColor.font),
        ),
      ),
    );
  }
}

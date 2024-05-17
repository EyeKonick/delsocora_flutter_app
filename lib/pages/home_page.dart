import 'package:delsocora_flutter_app/styles/app_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        automaticallyImplyLeading: false,
        elevation: 8,
        title: Text(
          '5minuteflutter',
          style: TextStyle(color: AppColor.font),
        ),
        actions: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(children: mockUsersFromServer()),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/user1.png',
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          "Sarah Fernandez",
          style: TextStyle(color: AppColor.font),
        )
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (int i = 0; i < 100; i++) {
      users.add(_userItem());
    }
    return users;
  }
}

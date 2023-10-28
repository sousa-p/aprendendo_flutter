import 'package:aprendendo_flutter/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nome da página'),
      ),
      body: Center(
          child: Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: ((value) {
          AppController.instance.changeTheme();
        }),
      )),
    );
  }
}

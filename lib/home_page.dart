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
          actions: [CustomSwitch()],
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 75,
                  height: 50,
                  color: Colors.red,
                ),
              ],
            )));
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: ((value) {
          AppController.instance.changeTheme();
        }));
  }
}

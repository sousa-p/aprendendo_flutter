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
      drawer: Drawer(
        child: Column(children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/tux.png'),
              ),
              accountName: Text('Tuxin Cruel'),
              accountEmail: Text('tuxintuxin.delas77@gmail.com')),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: (() {
              Navigator.of(context).pushReplacementNamed('/home');
            }),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: (() {
              Navigator.of(context).pushReplacementNamed('/');
            }),
          ),
        ]),
      ),
      appBar: AppBar(
        title: const Text('Nome da página'),
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

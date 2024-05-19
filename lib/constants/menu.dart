import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/screens/home.dart';
import 'package:to_do_app/screens/myday.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 228, 228, 228),
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 228, 228)),
              child: Text(
                "My To Do App",
                style: TextStyle(
                    fontSize: 24, color: Color.fromARGB(255, 0, 0, 0)),
              )),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
              //NAvigate to home Screen
            },
          ),
          ListTile(
            title: Text(
              "My Day",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            leading: const Icon(Icons.wb_sunny),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyDay()));
            },
          ),
          ListTile(
            title: Text(
              "Important",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            leading: const Icon(Icons.notifications),
            onTap: () {
              //NAvigate to Help Screen
            },
          ),
          ListTile(
            title: Text(
              "Sttings",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            leading: const Icon(Icons.settings),
            onTap: () {
              //NAvigate to Settings Screen
            },
          ),
        ],
      ),
    );
  }
}

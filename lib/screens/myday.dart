import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/constants/menu.dart';

class MyDay extends StatelessWidget {
  const MyDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 228, 228),
      appBar: AppBar(),
      drawer: SideDrawer(),
    );
  }
}

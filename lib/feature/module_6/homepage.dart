import 'package:flutter/material.dart';
import 'package:praktikum_mobile_2022_plug_e/feature/module_6/homepage_body.dart';

class HomePageHome extends StatefulWidget {
  const HomePageHome({Key? key}) : super(key: key);

  @override
  State<HomePageHome> createState() => _HomePageHomeState();
}

class _HomePageHomeState extends State<HomePageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktikum Mobile"),
      ),
      body: HomePageBody(),
    );
  }
}

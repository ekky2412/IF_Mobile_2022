import 'package:flutter/material.dart';
import 'package:mobile_b/feature/module_6/homepage_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

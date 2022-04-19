import 'package:flutter/material.dart';
import 'package:tugas_b/helper/shared_preference.dart';
import 'package:tugas_b/view/homepage.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        actions: [
          IconButton(
            onPressed: () {
              SharedPreference().setLogout();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            FutureBuilder(
              future: SharedPreference().getUsername(),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                return Text("Hello, ${snapshot.data}", style: TextStyle(fontSize: 24),);
              },
            )
          ],
        ),
      ),
    );
  }
}

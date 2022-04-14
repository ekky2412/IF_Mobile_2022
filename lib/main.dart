import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:praktikum_mobile_2022_plug_e/feature/module_3_dan_4/navigation_and_data/home_page.dart';
import 'package:praktikum_mobile_2022_plug_e/feature/module_6/homepage.dart';
import 'package:praktikum_mobile_2022_plug_e/model/contact_list_model.dart';

import 'feature/module_5/image_picker/image_picker_section.dart';


void main() async {
  initiateLocalDB();
  runApp(const MyApp());
}

void initiateLocalDB() async{
  await Hive.initFlutter();
  Hive.registerAdapter(ContactListModelAdapter());
  await Hive.openBox<ContactListModel>("contact_list");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageHome(),
    );
  }
  // Widget app_interface() {
  //   return Scaffold(
  //       appBar: AppBar(
  //         leading: Icon(Icons.home),
  //         title: Text("Praktikum TPM"),
  //         actions: [Icon(Icons.call), Icon(Icons.search)],
  //       ),
  //       body:
  //           // Center(
  //           //   child: Column(
  //           //     children: [
  //           //       Text("Ini Text"),
  //           //       TextButton(onPressed: () {}, child: Text("Text Button")),
  //           //       OutlinedButton(
  //           //         onPressed: () {},
  //           //         child: Text("Outlined Button"),
  //           //       ),
  //           //       ElevatedButton(
  //           //           onPressed: () {},
  //           //           child: Text("Elevated Button"),
  //           //           style: ElevatedButton.styleFrom(primary: Colors.red)),
  //           //       Image.asset(
  //           //         "images/amogus.png",
  //           //         width: 120
  //           //       ),
  //           //       Image.network(
  //           //           "https://avatars.githubusercontent.com/u/49394196?v=4",
  //           //           width: 120
  //           //       ),
  //           //       Padding(
  //           //         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  //           //         child: TextField(
  //           //           decoration: InputDecoration(
  //           //             border: OutlineInputBorder(),
  //           //             hintText: "Masukkan Nama"
  //           //           ),
  //           //         ),
  //           //       ),
  //           //     ],
  //           //   ),
  //           // ),
  //       //     ListView.separated(
  //       //       itemBuilder: (BuildContext context, int index) {
  //       //         return Card(
  //       //           child: Padding(
  //       //             padding: EdgeInsets.all(10.0),
  //       //             child: Text('Index $index', style: TextStyle(
  //       //               fontSize: 30
  //       //             ),),
  //       //           ),
  //       //         );
  //       //       },
  //       //       itemCount: 15,
  //       //       separatorBuilder: (BuildContext context, int index) {
  //       //         return Container(
  //       //           color: Colors.red,
  //       //           child: Text("Ini Separator"),
  //       //         );
  //       //       },
  //       // )
  //     // GridView.builder(
  //     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //     //     crossAxisCount: 2
  //     //   ),
  //     //   itemBuilder: (BuildContext context, int index) => FlutterLogo(),
  //     //   itemCount: 8,
  //     // )
  //     // IndexedStack(
  //     //   children: <Widget>[
  //     //     Container(
  //     //       color: Colors.green,
  //     //     ),
  //     //     Container(
  //     //       color: Colors.red,
  //     //       height: 400.0,
  //     //       width: 300.0,
  //     //     ),
  //     //     Container(
  //     //       color: Colors.deepPurple,
  //     //       height: 200.0,
  //     //       width: 200.0,
  //     //     ),
  //     //   ],
  //     // ),
  //     SingleChildScrollView(
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: <Widget>[
  //           Container(
  //             color: const Color(0xffeeee00),
  //             height: 600.0,
  //             alignment: Alignment.center,
  //             child: const Text('Fixed Height Content'),
  //           ),
  //           Container(
  //             color: const Color(0xff008000),
  //             height: 450.0,
  //             alignment: Alignment.center,
  //             child: const Text('Fixed Height Content'),
  //           ),
  //         ],
  //       ),
  //     )
  //   );
  // }
}

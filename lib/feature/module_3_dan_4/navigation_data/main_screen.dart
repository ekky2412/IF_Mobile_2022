import 'home_page.dart';
import 'tourism_place.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Dummy"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage(username: place.name);
            }));
          },
          child: Card(
            child: Row(
              children: [
                Image.network(place.imageUrls[0],width: 64,),
                Text(place.name),
                Text(place.ticketPrice)
              ],
            ),
          ),
        );
      },
      itemCount: tourismPlaceList.length,),
    );
  }
}

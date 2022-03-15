import 'package:flutter/material.dart';
import 'package:kuis_b/top_album.dart';

import 'home_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spoti-Pay"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemBuilder: (context, index) {
            final TopAlbum album = topAlbumList[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomePage(album: album);
                    }),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.network(
                        album.imageUrls,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(12.0),
                    //   child: Column(
                    //     children: [
                    //       Text(
                    //         album.albumName,
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(fontSize: 18),
                    //       ),
                    //       Text(
                    //         album.singer,
                    //         style: TextStyle(fontSize: 12),
                    //       ),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            );
          },
          itemCount: topAlbumList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
        ),
      ),
    );
  }
}

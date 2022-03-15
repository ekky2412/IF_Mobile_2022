import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuis_b/top_album.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  final TopAlbum album;

  const HomePage({Key? key, required this.album}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavorite = false;

  // double rating = 4.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.album.albumName}"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {
              _launchURL(widget.album.albumurl);
            },
            icon: Icon(Icons.share),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Image.network(
                widget.album.imageUrls,
                width: 192,
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.blueGrey),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Column(
                children: [
                  Text(
                    "${widget.album.albumName}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "${widget.album.singer}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${widget.album.releaseDate}",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                        child: VerticalDivider(
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "${widget.album.source}",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      width: 23,
                      child: Text("#",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    ),
                    SizedBox(
                      height: 25,
                      child: VerticalDivider(
                        color: Colors.white54,
                      ),
                    ),
                    Text("Title",
                        style: TextStyle(fontSize: 12, color: Colors.white))
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              width: 23,
                              child: Text(
                                "${index + 1}",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: VerticalDivider(
                                color: Colors.black54,
                              ),
                            ),
                            Text(widget.album.songs[index])
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: widget.album.songs.length),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}


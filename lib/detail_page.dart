import 'package:flutter/material.dart';
import 'package:praktikum_mobile_plug_b/data_hotel.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final DataHotel hotel;

  const DetailPage({Key? key, required this.hotel}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isFavorite) ? Colors.lightBlueAccent : Colors.white,
      appBar: AppBar(
        title: Text("${widget.hotel.name}"),
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
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: (MediaQuery
                .of(context)
                .size
                .height) / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.network(widget.hotel.imageUrl[index]),
                );
              },
              itemCount: widget.hotel.imageUrl.length,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textBesar(widget.hotel.name),
                SizedBox(height: 10,),
                Container(
                  height: 35,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: int.parse(widget.hotel.stars),
                    itemBuilder: (BuildContext context, int index) =>
                        Icon(Icons.stars),
                  ),
                ),
                textBesar(widget.hotel.location),
                SizedBox(height: 10,),
                textBesar("Harga per Kamar : " + widget.hotel.roomPrice),
                SizedBox(height: 10,),
                textBesar("Link Pemesanan : "),
                SizedBox(height: 10,),
                SizedBox(
                  height: (MediaQuery.of(context).size.height)/10,
                  width: (MediaQuery.of(context).size.width),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: widget.hotel.facility.length,
                      ),
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            Icon(IconData(int.parse(widget.hotel.iconFacility[index]),fontFamily: 'MaterialIcons')),
                            textSedang(widget.hotel.facility[index])
                          ],
                        );
                      },
                    itemCount: widget.hotel.facility.length,
                      ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      _launchURL(widget.hotel.websiteLink);
                    },
                    child: Text("Halaman Website"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget textBesar(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20),
    );
  }

  Widget textSedang(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16),
    );
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}

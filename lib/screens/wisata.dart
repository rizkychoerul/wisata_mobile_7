import 'package:flutter/material.dart';

class Wisata extends StatefulWidget {
  const Wisata({super.key});

  @override
  State<Wisata> createState() => _WisataState();
}

class _WisataState extends State<Wisata> {
  var styleJudul = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wisata',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 10,
            margin: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  child:
                      Image(image: AssetImage('assets/images/Boywithuke.png')),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Judul Wisata',
                        style: styleJudul,
                      ),
                      Text('Keterangan'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  child:
                      Image(image: AssetImage('assets/images/Boywithuke.png')),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Judul Wisata',
                        style: styleJudul,
                      ),
                      Text('Keterangan'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  child:
                      Image(image: AssetImage('assets/images/Boywithuke.png')),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Judul Wisata',
                        style: styleJudul,
                      ),
                      Text('Keterangan'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  const Tentang({super.key});

  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              child: SizedBox(
                width: 300,
                height: 150,
                child: Image(
                  image: AssetImage('assets/images/Boywithuke.png'),
                ),
              ),
            ),
            Text('Cibodas')
          ],
        ),
      ),
    );
  }
}

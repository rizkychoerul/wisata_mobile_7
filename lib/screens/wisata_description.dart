import 'package:flutter/material.dart';
import 'package:wisata_mobile_7/models/destination_model.dart';

class WisataDescription extends StatelessWidget {
  const WisataDescription({super.key, required this.destination});

  final TravelDestination destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(top: 30, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(destination.image![0]),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50, top: 10, right: 50),
                child: Text(
                  destination.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 10, right: 50),
                child: Text(
                  destination.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

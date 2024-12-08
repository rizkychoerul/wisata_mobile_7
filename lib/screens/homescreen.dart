import 'package:flutter/material.dart';
import 'package:wisata_mobile_7/models/destination_model.dart';
import 'package:wisata_mobile_7/utils/const.dart';
import 'package:wisata_mobile_7/widgets/popular_destination.dart';
import 'package:wisata_mobile_7/widgets/rekomendasi_destination.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedPage = 0;
  List<TravelDestination> popular = listDestination
      .where((element) => element.category == 'popular')
      .toList();

  List<TravelDestination> rekomendasi = listDestination
      .where((element) => element.category == 'rekomendasi')
      .toList();

  List<IconData> icons = <IconData>[
    Icons.home_filled,
    Icons.list,
    Icons.help_outline,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Cibodas App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kButtonColor,
      ),
      body: Column(
        children: <Widget>[
          buildAppBar(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Tempat Populer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(bottom: 20, left: 16),
            child: Row(
              children: List.generate(
                popular.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {},
                    child: PopularDestination(destination: popular[index]),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tempat Rekomendasi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: List.generate(
                  popular.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: RekomendasiDestination(
                          destination: rekomendasi[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      icons.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPage = index;
                          });
                        },
                        child: Icon(
                          icons[index],
                          size: 32,
                          color: selectedPage == index
                              ? Colors.black
                              : Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ),
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

Widget buildAppBar() {
  return Container(
    height: 120,
    margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
    decoration: const BoxDecoration(
      // color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      // boxShadow: [
      //   BoxShadow(
      //       color: Colors.grey.withOpacity(0.7),
      //       spreadRadius: 5,
      //       blurRadius: 10,
      //       offset: const Offset(0, 5)),
      // ],
    ),
    child: const SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            'Selamat Datang di Cibodas App',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}

// Widget buildSearchButton() {
//   return Container(
//     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//     decoration: BoxDecoration(
//       color: kButtonColor,
//       borderRadius: BorderRadius.circular(20),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.grey.withOpacity(0.8),
//           spreadRadius: 2,
//           blurRadius: 10,
//           offset: const Offset(0, 5),
//         ),
//       ],
//     ),
//     child: const TextField(
//       decoration: InputDecoration(
//         hintText: 'cari destinasi...',
//         hintStyle: TextStyle(
//           color: Colors.white54,
//           fontSize: 18,
//         ),
//         prefixIcon: Icon(Icons.search, color: Colors.white54, size: 28),
//         border: InputBorder.none,
//         contentPadding: EdgeInsets.symmetric(vertical: 12),
//       ),
//       style: TextStyle(
//         color: Colors.white,
//         fontSize: 18,
//       ),
//     ),
//   );
// }

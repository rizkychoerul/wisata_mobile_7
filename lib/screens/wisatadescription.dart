import 'package:flutter/material.dart';

class Wisatadescription extends StatefulWidget {
  const Wisatadescription({super.key});

  @override
  State<Wisatadescription> createState() => _WisatadescriptionState();
}

class _WisatadescriptionState extends State<Wisatadescription> {
  var styleTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  var styleDetail = TextStyle(fontSize: 12, fontWeight: FontWeight.w700);
  String textTentang =
      'Kebun Raya bogor merupakan UPT balai Konservasi tumbuhan di bawah pusat konservasi Kebun Raya Bogor. Lokasinya berada di antara gunung Gede dan Pangrango di ketinggian 1425 di atas permukaan laut. Areanya sejuk menempati lahan setidaknya seluas 85 Ha.Selain sebagai balai konservasi, Kebun Raya ini juga membuka diri untuk melayani masyarakat sesuai dengan kebutuhannya. Banyak layanan yang ditawarkan kepada masyarakat di antaranya pendidikan Lingkungan dan penelitian. Namun, Kebun Raya ini juga menjadi destinasi wisata karena kesejukan dan keindahan pemandangannya.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // ubah warna arrow back (default hitam)
        ),
        title: Text(
          'Tentang',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(top: 30, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://lapisbogor.co.id/wp-content/uploads/2022/09/kebun-raya-bogor-4.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'Cibodas',
                  style: styleTitle,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 10, right: 50),
                  child: Text(
                    textTentang,
                    textAlign: TextAlign.center,
                    style: styleDetail,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

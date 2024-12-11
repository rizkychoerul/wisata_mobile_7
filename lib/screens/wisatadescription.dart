import 'package:flutter/material.dart';

class Wisatadescription extends StatefulWidget {
  const Wisatadescription({super.key});

  @override
  State<Wisatadescription> createState() => _WisatadescriptionState();
}

class _WisatadescriptionState extends State<Wisatadescription> {
  var styleTitle = const TextStyle(
      fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87);
  var styleDetail = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black54,
      height: 1.5);
  String textTentang =
      'Kebun Raya Bogor merupakan UPT balai konservasi tumbuhan di bawah pusat konservasi Kebun Raya Bogor. Lokasinya berada di antara Gunung Gede dan Pangrango di ketinggian 1425 di atas permukaan laut. Areanya sejuk menempati lahan setidaknya seluas 85 Ha. Selain sebagai balai konservasi, Kebun Raya ini juga membuka diri untuk melayani masyarakat sesuai dengan kebutuhannya. Banyak layanan yang ditawarkan kepada masyarakat di antaranya pendidikan lingkungan dan penelitian. Namun, Kebun Raya ini juga menjadi destinasi wisata karena kesejukan dan keindahan pemandangannya.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Ubah warna ikon back
        ),
        title: const Text(
          'Tentang',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://lapisbogor.co.id/wp-content/uploads/2022/09/kebun-raya-bogor-4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Cibodas',
                  style: styleTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Text(
                  textTentang,
                  textAlign: TextAlign.justify,
                  style: styleDetail,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Explore More',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

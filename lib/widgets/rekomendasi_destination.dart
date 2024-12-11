import 'package:flutter/material.dart';
import 'package:wisata_mobile_7/models/destination_model.dart';

class RekomendasiDestination extends StatelessWidget {
  final TravelDestination destination;
  const RekomendasiDestination({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Row(
        children: [
          Container(
            height: 85,
            width: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(destination.image![0]),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  destination.name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: "NunitoSans",
                  ),
                ),
                Text(
                  'Kebun Raya Cibodas (aksara Sunda: ᮊᮨᮘᮥᮔ᮪ ᮛᮚ ᮎᮤᮘᮧᮓᮞ᮪) (bahasa Inggris: Cibodas Botanical Garden), terletak di Kompleks Hutan Gunung Gede dan Gunung Pangrango, Desa Cimacan, Cipanas, Cianjur, Jawa Barat. Topografi lapangannya bergelombang dan berbukit-bukit dengan ketinggian kurang lebih 1.300 s.d. 1.425 meter di atas permukaan laut dengan luas 84,99 hektar. Temperatur rata-rata 20,06 °C, kelembaban 80,82 % dan rata-rata curah hujan 2.950 mm per tahun.Kebun Raya Cibodas merupakan tempat yang nyaman untuk beristirahat sambil menikmati keindahan berbagai jenis tumbuhan yang berasal dari Indonesia dan negara-negara lain.',
                  style: TextStyle(fontSize: 8),
                  maxLines: 3,
                ),
                const SizedBox(
                  height: 10,
                ),
                /*Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                      size: 14,
                    ),
                    Text(
                      destination.location,
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),*/
                const SizedBox(
                  height: 5,
                ),

                //Rating tempat rekomendasi
                /*Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellow[800],
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${destination.rate} ",
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: "(${destination.review} reviews)",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ),
                  ],
                )*/
              ],
            ),
          ),
          /*Column(
            children: [
              const Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Rp${destination.price}K",
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: blueTextColor),
                    ),
                    TextSpan(
                      text: "/Orang",
                      style: TextStyle(
                          fontSize: 10, color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
            ],
          )*/
        ],
      ),
    );
  }
}

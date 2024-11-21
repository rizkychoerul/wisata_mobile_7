import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Halaman Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  'images/kucing-marah.jpg',
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  'images/meme-kocak-kucing.jpeg',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (String value) {},
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: 'Masukkan Nama',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Jenis Kelamin : '),
                Radio(
                  value: 'Laki-Laki',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value.toString();
                    });
                  },
                ),
                Text('Laki-Laki'),
                Radio(
                  value: 'Perempuan',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value.toString();
                    });
                  },
                ),
                Text('Perempuan'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(
              title: Text('Olahraga'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Seni'),
              value: seni,
              onChanged: (value) {
                setState(() {
                  seni = value!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            SwitchListTile(
              title: Text('Lulus'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Kirimkan'),
            )
          ],
        ),
      ),
    );
  }
}

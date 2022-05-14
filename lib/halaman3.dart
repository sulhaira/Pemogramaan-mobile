import 'package:flutter/material.dart';

class Halaman3 extends StatefulWidget {
  const Halaman3({Key? key}) : super(key: key);

  @override
  State<Halaman3> createState() => _Halaman3State();
}

enum Ukuran { unknown, small, medium, large }

class _Halaman3State extends State<Halaman3> {
  final namaDepanCtrl = TextEditingController();
  final namaBelakangCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  Ukuran ukuran = Ukuran.unknown;

  bool isSetuju = false;
  String namaDepan = "", namaBelakang = '', alamat = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaDepanCtrl.dispose();
    namaBelakangCtrl.dispose();
    alamatCtrl.dispose();
    super.dispose();
  }

  int angka = 0;

  String getUkuran(Ukuran? value) {
    if (value == Ukuran.small) {
      return "Small";
    } else if (value == Ukuran.medium) {
      return "Medium";
    } else if (value == Ukuran.large) {
      return "Large";
    }
    return "Tidak Memilih Ukuran / Ukuran Bebas";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 126, 174, 171),
          // leading: Icon(
          //   Icons.arrow_back_ios,
          //   color: Color(0xFF023E4A),
          // ),
          title: Text(
            "Ice Cream Vanilla",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          )),
      backgroundColor: Color.fromARGB(255, 217, 226, 228),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20), // Margin Bohongan
            Text('FORM PEMESANAN ICE CREAM'),
            const SizedBox(height: 20), // Margin Bohongan
            TextField(
              maxLines: 3,
              controller: namaDepanCtrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nama Depan Pemesan",
                hintText: 'Isi Nama Depan Pemesan',
              ),
            ),
            const SizedBox(height: 20), // Margin Bohongan
            TextFormField(
              maxLines: 3,
              controller: namaBelakangCtrl,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Nama Belakang Pemesan',
                  labelText: "Isi Nama Belakang Pemesan"),
            ),
            const SizedBox(height: 20), // Margin Bohongan
            TextFormField(
              maxLines: 3,
              controller: alamatCtrl,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Alamat',
                  labelText: "Isi Alamat"),
            ),
            gambar1(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text("S"),
                    leading: Radio(
                      groupValue: ukuran,
                      value: Ukuran.small,
                      onChanged: (Ukuran? value) {
                        setState(() {
                          ukuran = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text("M"),
                    leading: Radio(
                      groupValue: ukuran,
                      value: Ukuran.medium,
                      onChanged: (Ukuran? value) {
                        setState(() {
                          ukuran = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text("L"),
                    leading: Radio(
                      groupValue: ukuran,
                      value: Ukuran.large,
                      onChanged: (Ukuran? value) {
                        setState(() {
                          ukuran = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                child: Text('Tambah $angka'),
                onPressed: () {
                  setState(() {
                    angka++;
                  });
                  print(angka);
                }),
            TextButton(
                child: Text("Kurang"),
                onPressed: () {
                  setState(() {
                    angka--;
                  });
                  print(angka);
                }),

            ListTile(
              title: const Text("Setuju"),
              leading: Checkbox(
                value: isSetuju,
                onChanged: (bool? value) {
                  setState(() {
                    isSetuju = value!;
                  });
                },
              ),
            ),
          ],
        ),

        ElevatedButton(
          onPressed: () {
            setState(() {
              namaDepan = namaDepanCtrl.text;
              namaBelakang = namaBelakangCtrl.text;
              alamat = alamatCtrl.text;
            });
          },
          child: const Text(
            "Pesan Sekarang",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 211, 188, 188),
            ),
          ),
        ),
        const SizedBox(height: 20), // Margin Bohongan
        Text('Berikut Rincian Pesanan Anda: '),
        Text('Nama Pemesanan : $namaDepan $namaBelakang'),
        Text('Ukuran Ice Cream : ${getUkuran(ukuran)} '),
        Text('Jumlah Pesanan Anda : $angka'),
        Text(
            'Anda ${isSetuju ? "Telah Memesan" : "Pesanan Tidak Diproses (Silahkan Klik Setuju Agar Pesanan Anda DiProses ) "}'),
        const SizedBox(height: 20),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("KEMBALI"))),
      ]),
    );
  }
}

class gambar1 extends StatelessWidget {
  const gambar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/eskrim2.png',
              ),
              fit: BoxFit.cover)),
    );
  }
}

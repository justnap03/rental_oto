import 'package:flutter/material.dart';

class Data {
  final String jenis;
  final String harga;
  final String foto;
  final String deskripsi;

  const Data({
    required this.jenis,
    required this.harga,
    required this.foto,
    required this.deskripsi,
  });
}

class pageDua extends StatelessWidget {
  pageDua({super.key});

  final List<int> numberList = List<int>.generate(10, (int index) => index);

  @override
  Widget build(BuildContext context) {
    List<Data> soundIndex = [
      const Data(
        jenis: 'Rental 1',
        harga: 'Rp.250.000',
        foto: 'images/sedan.jpeg',
        deskripsi:
            '',
      ),
      const Data(
        jenis: 'Rental 2',
        harga: 'Rp.300.000',
        foto: 'images/lmpv.jpg',
        deskripsi:
            '',
      ),
      const Data(
        jenis: 'Rental 3',
        harga: 'Rp.800.000',
        foto: 'images/sport.jpg',
        deskripsi:
            '',
      ),
      const Data(
        jenis: 'Rental 4',
        harga: 'Rp.400.000',
        foto: 'images/hatchback.jpg',
        deskripsi:
            '',
      ),
      const Data(
        jenis: 'Rental 5',
        harga: 'Rp.430.000',
        foto: 'images/suv.jpg',
        deskripsi:
            '',
      ),
      const Data(
        jenis: 'Rental 6',
        harga: 'Rp.1.000.000',
        foto: 'images/cabrio.jpg',
        deskripsi:
            '',
      ),
      const Data(
        jenis: 'Rental 7',
        harga: 'Rp.800.000',
        foto: 'images/wagon.jpg',
        deskripsi:
            '',
      ),
      const Data(
        jenis: 'Rental 8',
        harga: 'Rp.560.000',
        foto: 'images/crossover.jpg',
        deskripsi:
            '',
      ),
      const Data(
        jenis: 'Sound 9000 watt',
        harga: 'Rp.1.500.000',
        foto: 'images/sound9.jpeg',
        deskripsi:
            'Penyewaan Sound 9000 watt cocok untuk acara indoor skala besar dan outdoor skala besar seperti konser',
      ),
      const Data(
        jenis: 'Sound 10.000 watt',
        harga: 'Rp.1600.000',
        foto: 'images/sound10.jpeg',
        deskripsi:
            'Penyewaan Sound 10.000 watt cocok untuk acara indoor skala besar dan outdoor skala besar seperti konser',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Pilihan Rental Mobil"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final data = soundIndex[index];
          return Card(
            elevation: 5, // Add elevation for a card-like appearance
            margin: EdgeInsets.all(10), // Add margin for spacing
            child: ListTile(
              leading: Container(
                width: 80,
                height: 80,
                child: Image.asset(data.foto),
              ),
              title: Text(data.jenis),
              subtitle: Text(data.harga),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}

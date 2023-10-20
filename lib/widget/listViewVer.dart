import 'package:flutter/material.dart';
import 'package:mobile/sound2.dart';

class DataSound {
  final String jenis;
  final String harga;
  final String foto;
  final String deskripsi;

  const DataSound({
    required this.jenis,
    required this.harga,
    required this.foto,
    required this.deskripsi,
  });
}

class SoundWidget extends StatelessWidget {
  final DataSound datasound;

  SoundWidget({required this.datasound});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => sound2(data: datasound),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 300, // Set the width for horizontal layout
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  datasound.foto,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      datasound.jenis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      datasound.harga,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      datasound.deskripsi,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewHor2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataSound> soundIndex = [
      const DataSound(
        jenis: 'Rental 4',
        harga: 'Rp.400.000',
        foto: 'images/hatchback.jpeg',
        deskripsi:
            '',
      ),
      const DataSound(
        jenis: 'Rental 5',
        harga: 'Rp.430.000',
        foto: 'images/mpv.jpg',
        deskripsi:
            '',
      ),
      const DataSound(
        jenis: 'Rental 6',
        harga: 'Rp.1.000.000',
        foto: 'images/cabrio.jpg',
        deskripsi:
            '',
      ),
      const DataSound(
        jenis: 'Sound 5000 watt',
        harga: 'Rp.1.100.000',
        foto: 'images/sound1.jpeg',
        deskripsi:
            'Penyewaan Sound 5000 watt cocok untuk acara indoor skala besar dan outdoor selain konser',
      ),
      const DataSound(
        jenis: 'Sound 6000 watt',
        harga: 'Rp.1.200.000',
        foto: 'images/sound5.jpeg',
        deskripsi:
            'Penyewaan Sound 6000 watt cocok untuk acara indoor skala besar dan outdoor selain konser',
      ),
    ];
 
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Text(
            'Top Dealer',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, fontFamily : 'Octopus'),
          ),
          Container(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Set the scroll direction to horizontal
              itemCount: soundIndex.length,
              itemBuilder: (context, index) =>
                  SoundWidget(datasound: soundIndex[index]),
            ),
          ),
        ],
      ),
    );
  }
}

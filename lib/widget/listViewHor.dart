import 'package:flutter/material.dart';
import 'package:mobile/studio2.dart';

class DataStudio {
  final String jenis;
  final String harga;
  final String foto;
  final String deskripsi;

  const DataStudio({
    required this.jenis,
    required this.harga,
    required this.foto,
    required this.deskripsi,
  });
}

class ListViewHor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataStudio> dataIndex = [
      const DataStudio(
        jenis: 'Rental 1',
        harga: 'Rp.250.000/Day',
        foto: 'images/sedan.jpeg',
        deskripsi:
            'Mobil Sedan sangat dapat di andalkan untuk menjadi mobil rental anda. Ingin membawa barang yang banyak? atau ingin meembawa keluarga kecil anda? Tenang! Mobil sedan SOLUSINYA',
      ),
      const DataStudio(
        jenis: 'Rental 2',
        harga: 'Rp.300.000/Day',
        foto: 'images/lmpv.jpg',
        deskripsi:
            '',
      ),
      const DataStudio(
        jenis: 'Rental 3',
        harga: 'Rp.800.000/Day',
        foto: 'images/sport.jpg',
        deskripsi:
            '',
      ),
    ];

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Text(
            'Hot Deals',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, fontFamily : 'Octopus'),
          ),
          Container(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Set the scroll direction to horizontal
              itemCount: dataIndex.length,
              itemBuilder: (context, index) =>
                StudioWidget(datastudio: dataIndex[index]),
          ),
        ),
      ],
    )
    );
  }
}

class StudioWidget extends StatelessWidget {
  final DataStudio datastudio;

  StudioWidget({required this.datastudio});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return studio2(studio: datastudio);
              },
            ));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  datastudio.foto,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      datastudio.jenis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      datastudio.harga,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
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

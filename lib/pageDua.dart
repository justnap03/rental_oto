// import 'package:flutter/material.dart';
// import 'package:mobile/pageTiga.dart';
// // import 'package:mobile/pageTiga.dart';

// class Data {
//   final String jenis;
//   final String harga;
//   final String foto;
//   final String deskripsi;

//   const Data({
//     required this.jenis,
//     required this.harga,
//     required this.foto,
//     required this.deskripsi,
//   });
// }

// class pageDua extends StatelessWidget {
//   pageDua({super.key});
//   final List<int> numberList = List<int>.generate(10, (int index) => index);

//   @override
//   Widget build(BuildContext context) {
//     List<Data> dataIndex = [
//       const Data(
//         jenis: 'Sound 1000 watt',
//         harga: 'Rp.500.000',
//         foto:
//             'https://th.bing.com/th/id/OIP.leQsUNtWrsjabBUKIRTn7AHaHa?pid=ImgDet&rs=1',
//         deskripsi:
//             'Penyewaan Sound 1000 watt cocok untuk acara indoor dan outdoor kecil-kecil an',
//       ),
//       const Data(
//         jenis: 'Sound 2000 watt',
//         harga: 'Rp.700.000',
//         foto:
//             'https://th.bing.com/th/id/OIP.leQsUNtWrsjabBUKIRTn7AHaHa?pid=ImgDet&rs=1',
//         deskripsi:
//             'Penyewaan Sound 2000 watt cocok untuk acara indoor dan outdoor kecil-kecil an',
//       ),
//       const Data(
//         jenis: 'Sound 3000 watt',
//         harga: 'Rp.900.000',
//         foto:
//             'https://th.bing.com/th/id/R.0b17302683b4b4fc8739b2f0db965428?rik=azznTe7dufNy2Q&riu=http%3a%2f%2fwww.paketsoundsystem.com%2fwp-content%2fuploads%2f2012%2f08%2fPaket-Sound-System-Seminar.jpg&ehk=x%2bRzF95Z%2fykB68C%2fcfSM%2buaD7dIoQVoXaNb7T1XnXLU%3d&risl=&pid=ImgRaw&r=0',
//         deskripsi:
//             'Penyewaan Sound 3000 watt cocok untuk acara indoor skala menengah dan outdoor selain konser',
//       ),
//       const Data(
//         jenis: 'Sound 4000 watt',
//         harga: 'Rp.1.000.000',
//         foto:
//             'https://th.bing.com/th/id/OIP.9yUDFFQubPTO76auQJ2KXgHaHa?pid=ImgDet&rs=1',
//         deskripsi:
//             'Penyewaan Sound 4000 watt cocok untuk acara indoor skala menengah dan outdoor selain konser',
//       ),
//       const Data(
//         jenis: 'Sound 5000 watt',
//         harga: 'Rp.1.100.000',
//         foto:
//             'https://th.bing.com/th/id/R.d4cb85e6ab0dac2b8c4a2047a1dac342?rik=E4Y6WHnuFPT6iQ&riu=http%3a%2f%2fwww.paketsoundsystem.com%2fwp-content%2fuploads%2f2012%2f08%2fPaket-sound-system-live.jpg&ehk=J3aO5BK1pasrelqte5UwLpzMRRNLz4Dz3kjVWu4o44M%3d&risl=&pid=ImgRaw&r=0',
//         deskripsi:
//             'Penyewaan Sound 5000 watt cocok untuk acara indoor skala besar dan outdoor selain konser',
//       ),
//       const Data(
//         jenis: 'Sound 6000 watt',
//         harga: 'Rp.1.200.000',
//         foto:
//             'https://th.bing.com/th/id/R.f9ea725dc30e4b7f44d86d9c6b80cc73?rik=FC6G2J9WIqko9A&riu=http%3a%2f%2fwww.paketsoundsystem.com%2fwp-content%2fuploads%2f2012%2f07%2fPaket-Sound-System-Upacara.jpg&ehk=ySn6TiWMbunn3fv4I0A87xV4RHS5TpS2iIopA7TM4Ow%3d&risl=&pid=ImgRaw&r=0',
//         deskripsi:
//             'Penyewaan Sound 6000 watt cocok untuk acara indoor skala besar dan outdoor selain konser',
//       ),
//       const Data(
//         jenis: 'Sound 7000 watt',
//         harga: 'Rp.1.300.000',
//         foto:
//             'https://th.bing.com/th/id/R.b7b70fce28d88d81cf49a8f40ee7d654?rik=9PHta%2f0128Fq0w&riu=http%3a%2f%2f3.imimg.com%2fdata3%2fVV%2fUM%2fMY-12272254%2fjl-500x500.jpg&ehk=6whQf05qf0d854RIRat8P9dphAcT787xUsSpR%2fJ1uRk%3d&risl=&pid=ImgRaw&r=0',
//         deskripsi:
//             'Penyewaan Sound 7000 watt cocok untuk acara indoor skala besar dan outdoor skala acara gigs lokal',
//       ),
//       const Data(
//         jenis: 'Sound 8000 watt',
//         harga: 'Rp.1.400.000',
//         foto:
//             'https://th.bing.com/th/id/OIP.lc4Mu7n8IfbME5SFoC0X4gHaF_?pid=ImgDet&rs=1',
//         deskripsi:
//             'Penyewaan Sound 8000 watt cocok untuk acara indoor skala besar dan outdoor skala acara gigs lokal',
//       ),
//       const Data(
//         jenis: 'Sound 9000 watt',
//         harga: 'Rp.1.500.000',
//         foto:
//             'https://th.bing.com/th/id/R.5061aae364dad84e4656f00890ee7777?rik=qq%2finfnRhF8a3Q&riu=http%3a%2f%2fsound-hire.ie%2fwp-content%2fuploads%2f2017%2f03%2fBEGINNER-PACK.jpg&ehk=nWUd0gJVepwdm9OTMtrQX6ayLbSq4JuI9zZOzPWKTY0%3d&risl=&pid=ImgRaw&r=0',
//         deskripsi:
//             'Penyewaan Sound 9000 watt cocok untuk acara indoor skala besar dan outdoor skala besar seperti konser',
//       ),
//       const Data(
//         jenis: 'Sound 10.000 watt',
//         harga: 'Rp.1600.000',
//         foto:
//             'https://th.bing.com/th/id/R.dd9821a22955442fe4fa1e39905051fb?rik=s%2bLSugWb%2bE6iqA&riu=http%3a%2f%2fpaketsoundsystem.com%2fwp-content%2fuploads%2f2012%2f10%2fPaket-Usaha-Rental-Sound-Sy.jpg&ehk=WIt%2b9MC9NUzaEpcWfgWA1z98hulTnCnFEoHGziyPt6g%3d&risl=&pid=ImgRaw&r=0',
//         deskripsi:
//             'Penyewaan Sound 10.000 watt cocok untuk acara indoor skala besar dan outdoor skala besar seperti konser',
//       ),
//     ];
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Pilihan sewa alat"),
//           centerTitle: true,
//         ),
//         body: ListView.builder(
//             itemCount: numberList.length,
//             itemBuilder: (BuildContext context, int index) {
//               final data = dataIndex[index];
//               return Card(
//                 child: ListTile(
//                   leading: Container(
//                     child: Image.network(data.foto),
//                   ),
//                   title: Text(data.jenis),
//                   subtitle: Text(data.harga),
//                   onTap: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) {
//                         return pageTiga(data: data);
//                       },
//                     ));
//                   },
//                 ),
//               );
//             }));
//   }
// }

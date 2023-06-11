// // Wrap(
// // spacing: 8.0,
// // runSpacing: 8.0,
// // children: [
// // buildPhotoButton(context, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU', 'Photo 1'),
// // buildPhotoButton(context, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU', 'Photo 1'),
// // buildPhotoButton(context, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU', 'Photo 1'),
// //
// // buildPhotoButton(context, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU', 'Photo 1'),
// // buildPhotoButton(context, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU', 'Photo 1'),
// // buildPhotoButton(context, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU', 'Photo 1'),
//
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   var items = [
//     {
//       'img':
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU',
//       'title': 'image 1'
//     },
//     {
//       'img':
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU',
//       'title': 'image 2'
//     },
//     {
//       'img':
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU',
//       'title': 'image 3'
//     },
//     {
//       'img':
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU',
//       'title': 'image 4'
//     },
//     {
//       'img':
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU',
//       'title': 'image 5'
//     },
//     {
//       'img':
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkvFCLSMbUU6Bqb1m-0y3LPAQ7_Gcs-PNZw&usqp=CAU',
//       'title': 'image 6'
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text('Photo Galary'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
//                 child: Text(
//                   'Welcome To MY Photo Galary !',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 25.0,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.teal, width: 3.0),
//                     ),
//                     prefixIcon: Icon(
//                       Icons.search_rounded,
//                       color: Colors.grey,
//                     ),
//                     label: Text(
//                       'Serch',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ),
//                 ),
//               ),
//               GridView.builder(
//                   scrollDirection: Axis.vertical,
//                   shrinkWrap: true,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                   ),
//                   itemCount: items.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {},
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           color: Colors.blue,
//                           height: 400,
//                           width: double.maxFinite,
//                           child: ListView(children: [
//                             Image.network(
//                               items[index]['img']!,
//                               fit: BoxFit.fill,
//                             ),
//                             TextButton(onPressed: () {}, child: Text('hello', style: TextStyle(color: Colors.white),))
//                           ]),
//                         ),
//                       ),
//                     );
//                   })
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// //      floatingActionButton: FloatingActionButton(
// //         backgroundColor: Colors.teal,
// //         child: Icon(Icons.upload),
// //         onPressed: () {
// //           MySnackbar(context, 'Photos Uploaded Successfully!');
// //         },
// //       ),
// //     );
// //   }
// //
// //   buildPhotoButton(BuildContext context, String imageUrl, String caption) {
// //     return ElevatedButton(
// //       style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
// //       onPressed: () {
// //         MySnackbar(context, 'Clicked on photo!');
// //       },
// //       child: Column(
// //         children: [
// //           Image.network(
// //             imageUrl,
// //             height: 100.0,
// //             fit: BoxFit.fill,
// //           ),
// //           // SizedBox(height: 8.0),
// //           Text(caption),
// //         ],
// //       ),
// //     );
// //   }
// // }

//https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       // home: Container(
//       //   color: Colors.white,
//       //   child: Container(color: Colors.blue),
//       // ),
//       // home: Stack(
//       //   alignment: AlignmentDirectional.center,
//       //   children: [
//       //     Container(color: Colors.red, width: 150, height: 150,),
//       //     Container(color: Colors.blue, width: 50, height: 50,),
//       //   ],
//       // ),
//       // home: Column(
//       //   mainAxisAlignment: MainAxisAlignment.center,
//       //   crossAxisAlignment: CrossAxisAlignment.start,
//       //   children: [
//       //     Container(color: Colors.red, width: 150, height: 150,),
//       //     Container(color: Colors.blue, width: 50, height: 50,),
//       //   ],
//       // ),
//       // home: Row(
//       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //   crossAxisAlignment: CrossAxisAlignment.center,
//       //   children: [
//       //     Container(color: Colors.red, width: 150, height: 150,),
//       //     Container(color: Colors.blue, width: 50, height: 50,),
//       //   ],
//       // ),
//       home: Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 Container(color: Colors.red, width: 150, height: 150),
//                 Container(color: Colors.blue, width: 50, height: 50),
//               ],
//             ),
//             Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 Container(color: Colors.blue, width: 150, height: 150),
//                 Container(color: Colors.red, width: 50, height: 50),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//
//               children: [
//                 Container(color: Colors.orange, width: 100, height: 100),
//                 Container(color: Colors.red, width: 100, height: 100),
//                 Container(color: Colors.pink, width: 100, height: 100),
//               ],
//             ),
//             Container(
//               color: Colors.amber,
//               height: 30,
//               width: 5000,
//               child: Text(
//                 'Diamante amarelo',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black, fontSize: 28),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print('Você apertou o botão');
//               },
//               child: Text('Aperte o botão!'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

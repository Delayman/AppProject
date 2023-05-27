import 'package:final_project/Pages/Block_App.dart';
import 'package:flutter/material.dart';

void main() => runApp(const InkWellExampleApp());

class InkWellExampleApp extends StatelessWidget {
  const InkWellExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('InkWell Sample')),
        body: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Sign_in()
          ));
          },
            child: Ink.image(
              image: AssetImage('assets/pic/Sekiro.jpg'),height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
  }
}

// Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('InkWell Sample')),
//         body: Center(
//           child: InkWell(
//             onTap: () {
//               Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (_) => Sign_in()
//           ));
//           },
//             child: Ink.image(
//               image: AssetImage('assets/pic/Sekiro.jpg'),height: 200,
//               width: 200,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       );
//   }



// class HomeWidget extends StatelessWidget {
//           @override
//           Widget build(BuildContext context) {
//           // Figma Flutter Generator HomeWidget - FRAME
//             return Container(
//       width: 390,
//       height: 844,
//       decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(30),
//             topRight: Radius.circular(30),
//             bottomLeft: Radius.circular(30),
//             bottomRight: Radius.circular(30),
//           ),
//       color : Color.fromRGBO(255, 255, 255, 1),
//       border : Border.all(
//           color: Color.fromRGBO(0, 0, 0, 1),
//           width: 1,
//         ),
//   ),
//       child: Stack(
//         children: <Widget>[
//           Positioned(
//         top: 34,
//         left: 275,
//         child: Container(
//         width: 33,
//         height: 33,
//         decoration: BoxDecoration(
//           image : DecorationImage(
//           image: AssetImage('assets/images/Search1.png'),
//           fit: BoxFit.fitWidth
//       ),
//   )
//       )
//       ),Positioned(
//         top: 29,
//         left: 22,
//         child: Container(
//         width: 237,
//         height: 43,
//         decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//             bottomLeft: Radius.circular(20),
//             bottomRight: Radius.circular(20),
//           ),
//       color : Color.fromRGBO(219, 219, 219, 1),
//   )
//       )
//       ),Positioned(
//         top: 100,
//         left: 22,
//         child: Container(
//         width: 344,
//         height: 193,
//         decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(5),
//             topRight: Radius.circular(5),
//             bottomLeft: Radius.circular(5),
//             bottomRight: Radius.circular(5),
//           ),
//       image : DecorationImage(
//           image: AssetImage('assets/pic/Sherlock_Holmes.jpg'),
//           fit: BoxFit.fitWidth
//       ),
//   )
//       )
//       ),Positioned(
//         top: 496,
//         left: 37,
//         child: Container(
//         width: 293,
//         height: 58,
//         decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(0),
//             topRight: Radius.circular(0),
//             bottomLeft: Radius.circular(5),
//             bottomRight: Radius.circular(5),
//           ),
//       color : Color.fromRGBO(9, 33, 71, 1),
//   )
//       )
//       ),Positioned(
//         top: 377,
//         left: 37,
//         child: Container(
//         width: 293,
//         height: 119,
//         decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(5),
//             topRight: Radius.circular(5),
//             bottomLeft: Radius.circular(0),
//             bottomRight: Radius.circular(0),
//           ),
//       image : DecorationImage(
//           image: AssetImage('assets/pic/Evil_Within.jpg'),
//           fit: BoxFit.fitWidth
//       ),
//   )
//       )
//       ),Positioned(
//         top: 528,
//         left: 52,
//         child: Container(
//         width: 29,
//         height: 15,
//         decoration: BoxDecoration(
//           image : DecorationImage(
//           image: AssetImage('assets/images/Windows.png'),
//           fit: BoxFit.fitWidth
//       ),
//   )
//       )
//       ),Positioned(
//         top: 297,
//         left: 28,
//         child: Text('The evil within', textAlign: TextAlign.left, style: TextStyle(
//         color: Colors.black,
//         fontFamily: 'Baloo Bhaina 2',
//         fontSize: 11,
//         letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//         fontWeight: FontWeight.normal,
//         height: 1
//       ),)
//       ),Positioned(
//         top: 273,
//         left: 191,
//         child: Container(
//         width: 6,
//         height: 6,
//         decoration: BoxDecoration(
//           color : Color.fromRGBO(255, 255, 255, 1),
//       borderRadius : BorderRadius.all(Radius.elliptical(6, 6)),
//   )
//       )
//       ),Positioned(
//         top: 273,
//         left: 176,
//         child: Container(
//         width: 6,
//         height: 6,
//         decoration: BoxDecoration(
//           color : Color.fromRGBO(255, 255, 255, 1),
//       borderRadius : BorderRadius.all(Radius.elliptical(6, 6)),
//   )
//       )
//       ),Positioned(
//         top: 273,
//         left: 206,
//         child: Container(
//         width: 6,
//         height: 6,
//         decoration: BoxDecoration(
//           color : Color.fromRGBO(9, 33, 71, 1),
//       borderRadius : BorderRadius.all(Radius.elliptical(6, 6)),
//   )
//       )
//       ),Positioned(
//         top: 707,
//         left: 37,
//         child: Container(
//         width: 298,
//         height: 58,
//         decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(0),
//             topRight: Radius.circular(0),
//             bottomLeft: Radius.circular(5),
//             bottomRight: Radius.circular(5),
//           ),
//       color : Color.fromRGBO(9, 33, 71, 1),
//   )
//       )
//       ),Positioned(
//         top: 737,
//         left: 52,
//         child: Container(
//         width: 29,
//         height: 16,
//         decoration: BoxDecoration(
//           image : DecorationImage(
//           image: AssetImage('assets/pic/Windows.png'),
//           fit: BoxFit.fitWidth
//       ),
//   )
//       )
//       ),Positioned(
//         top: 588,
//         left: 37,
//         child: Container(
//         width: 298,
//         height: 119,
//         decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(5),
//             topRight: Radius.circular(5),
//             bottomLeft: Radius.circular(0),
//             bottomRight: Radius.circular(0),
//           ),
//       image : DecorationImage(
//           image: AssetImage('assets/pic/Until_Dawn.jpg'),
//           fit: BoxFit.fitWidth
//       ),
//   )
//       )
//       ),Positioned(
//         top: 794,
//         left: 45,
//         child: Container(
//         width: 290,
//         height: 50,
//         decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(5),
//             topRight: Radius.circular(5),
//             bottomLeft: Radius.circular(0),
//             bottomRight: Radius.circular(0),
//           ),
//       image : DecorationImage(
//           image: AssetImage('assets/pic/Life_Of_P.webp'),
//           fit: BoxFit.fitWidth
//       ),
//   )
//       )
//       ),Positioned(
//         top: 31,
//         left: 324,
//         child: Container(
//       width: 40,
//       height: 38.297874450683594,
      
//       child: Stack(
//         children: <Widget>[
//           Positioned(
//         top: 0,
//         left: 0,
//         child: Container(
//         width: 40,
//         height: 38.297874450683594,
//         decoration: BoxDecoration(
//           color : Color.fromRGBO(219, 219, 219, 1),
//       borderRadius : BorderRadius.all(Radius.elliptical(40, 38.297874450683594)),
//   )
//       )
//       ),Positioned(
//         top: 10.869314193725586,
//         left: 10.285760879516602,
//         child: Container(
//         width: 19.428573608398438,
//         height: 19.428573608398438,
//         decoration: BoxDecoration(
//           image : DecorationImage(
//           image: AssetImage('assets/images/Heart_F.png'),
//           fit: BoxFit.fitWidth
//       ),
//   )
//       )
//       ),
//         ]
//       )
//     )
//       ),
//         ]
//       )
//     );
//           }
//         }
        
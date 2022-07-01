// import 'package:flutter/material.dart';
// import 'package:muselight/widgets/delayedAnimation.dart';

// class WelcomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("images/rezBackground.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Container(
//           margin: EdgeInsets.symmetric(
//             vertical: 60,
//             horizontal: 30,
//           ),
//           child: Column(
//             children: [
//               DelayedAnimation(
//                 delay: 1500,
//                 child: Container(
//                   height: 170,
//                   child: Image.asset('images/rezLogo.png'),
//                 ),
//               ),
//               DelayedAnimation(
//                 delay: 3500,
//                 child: Container(
//                   margin: EdgeInsets.only(
//                     top: 30,
//                     bottom: 20,
//                   ),
//                   child: Text("Réservez un restaurant à proximité.",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                       )),
//                 ),
//               ),
//               DelayedAnimation(
//                 delay: 4500,
//                 child: Container(
//                   alignment: Alignment.bottomCenter,
//                   width: double.infinity,
//                   height: 400,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         shape: StadiumBorder(), padding: EdgeInsets.all(13)),
//                     child: Text('GET STARTED'),
//                     onPressed: () {},
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

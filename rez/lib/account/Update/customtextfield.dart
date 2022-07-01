// // ignore_for_file: file_names

// import 'package:flutter/material.dart';

// class CustomTextField {
//   final String title;
//   final String placeholder;
//   final bool ispassword;
//   late String err;
//   late String _value;
//   CustomTextField(
//       {this.title = "",
//       this.placeholder = "",
//       this.ispassword = false,
//       this.err = "Please complete the field"});

//   SizedBox textfield() {
//     return SizedBox(
//         child: Column(children: <Widget>[
//       Padding(padding: EdgeInsets.all(5)),
//       TextField(
//         decoration: InputDecoration(
//           hintText: '',
//           contentPadding: EdgeInsets.all(8.0),
//           filled: true,
//           fillColor: Color.fromARGB(255, 213, 218, 222),
//           border: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(6)),
//         ),
//       )
//     ]));
//   }

//   String get value {
//     return _value;
//   }
// }

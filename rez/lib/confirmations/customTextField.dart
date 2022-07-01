// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextField {
  final String title;
  final String placeholder;
  final bool ispassword;
  late String err;
  late String _value;
  late String _password;
  double _strength = 0;
  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");
  String _displayText = 'Please enter a password';
  CustomTextField(
      {this.title = "",
      this.placeholder = "",
      this.ispassword = false,
      this.err = "Please complete the field"});

  TextFormField textfromfield() {
        LinearProgressIndicator(
      value: _strength,
      backgroundColor: Colors.grey[300],
      color: _strength <= 1 / 4
          ? Colors.red
          : _strength == 2 / 4
              ? Colors.yellow
              : _strength == 3 / 4
                  ? Colors.blue
                  : Colors.green,
      minHeight: 15,
    );
    return TextFormField(
      onChanged: (e) {
        _value = e;
      },
      validator: (String? value) {
        if (value!.isEmpty) {
          return this.err;
        }
      },
      obscureText: this.ispassword,
      decoration: InputDecoration(
          hintText: this.placeholder,
          labelText: this.title,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purpleAccent))),
    );

  }

  String get value {
    return _value;
  }
}

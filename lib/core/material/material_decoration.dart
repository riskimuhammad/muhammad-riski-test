import 'package:flutter/material.dart';
import 'package:muhammad_riski_test/core/material/material_color.dart';

class MaterialDecoration {
  InputDecoration inputDecoration(
      {String? hintText, IconData? prefixIcon, IconData? suffixIcon}) {
    return InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: materialColor.primaryColor)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: materialColor.primaryColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: materialColor.primaryColor)));
  }

  ButtonStyle buttonStyle(context) {
    return ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        backgroundColor: MaterialStateProperty.all(materialColor.primaryColor),
        fixedSize: MaterialStateProperty.all(
            Size(MediaQuery.of(context).size.width, 45)));
  }
}

MaterialDecoration materialDecoration = MaterialDecoration();

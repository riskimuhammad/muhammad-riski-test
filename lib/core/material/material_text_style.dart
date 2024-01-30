import 'package:flutter/material.dart';
import 'package:muhammad_riski_test/core/material/material_color.dart';

class MaterialTextStyle {
  TextStyle textStyleFZ12 =
      TextStyle(color: materialColor.primaryColorText, fontSize: 12);

  TextStyle textStyleFZ12CPrimary =
      TextStyle(color: materialColor.primaryColor, fontSize: 12);
  TextStyle textStyleFZ12Bold = TextStyle(
      color: materialColor.primaryColorText,
      fontSize: 12,
      fontWeight: FontWeight.bold);
  TextStyle textStyleFZ15Bold = TextStyle(
      color: materialColor.primaryColorText,
      fontSize: 15,
      fontWeight: FontWeight.bold);
  TextStyle textStyleFZ20BoldCPrimary = TextStyle(
      color: materialColor.primaryColor,
      fontSize: 20,
      fontWeight: FontWeight.bold);
  TextStyle textStyleFZ20Bold = TextStyle(
      color: materialColor.primaryColorText,
      fontSize: 20,
      fontWeight: FontWeight.bold);
}

MaterialTextStyle materialTextStyle = MaterialTextStyle();

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_riski_test/feature/pln/presentation/controller/pln_controller.dart';

import '../../../../core/helper/languages_key_helper.dart';
import '../../../../core/helper/resolution_size.dart';
import '../../../../core/material/material_color.dart';
import '../../../../core/material/material_text_style.dart';

class PLNAppBar {
  appBar() {
    final controller = Get.find<PLNController>();
    return Column(
      children: [
        Text(
          languagesKey.electricityToken,
          style: materialTextStyle.textStyleFZ20Bold,
        ),
        Divider(
          thickness: 1,
          color: materialColor.primaryColor,
        ),
        largeResolutionSizeHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languagesKey.noMeter,
                  style: materialTextStyle.textStyleFZ12,
                ),
                smallResolutionSizeHeight,
                Text(
                  languagesKey.unit,
                  style: materialTextStyle.textStyleFZ12,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  controller.userMaping.value.noMeter!,
                  style: materialTextStyle.textStyleFZ12,
                ),
                smallResolutionSizeHeight,
                Text(
                  controller.userMaping.value.name!,
                  style: materialTextStyle.textStyleFZ12,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_riski_test/feature/pln/presentation/widget/pln_body.dart';

import '../controller/pln_controller.dart';

class MainPagePLN extends StatelessWidget {
  MainPagePLN({super.key});
  final body = PLNBody();
  final controller = Get.find<PLNController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PLNController>(
      initState: (state) {
        controller.build();
      },
      init: PLNController(),
      builder: (controller) => Scaffold(
        body: body.body(context),
      ),
    );
  }
}

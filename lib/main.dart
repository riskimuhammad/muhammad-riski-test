import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_riski_test/core/material/material_color.dart';
import 'package:muhammad_riski_test/feature/pln/presentation/controller/pln_controller.dart';
import 'package:muhammad_riski_test/feature/pln/presentation/page/main_pln_page.dart';

main() {
  runApp(TheraApp());
}

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PLNController>(() => PLNController(), fenix: true);
  }
}

class TheraApp extends StatelessWidget {
  const TheraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: materialColor.colorWhite,
      ),
      initialBinding: InitialBindings(),
      home: InitialApp(),
    );
  }
}

class InitialApp extends StatelessWidget {
  const InitialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPagePLN();
  }
}

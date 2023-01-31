import 'package:flutter/material.dart';
import 'package:tas/core/utils/colors/original_colors.dart';
import 'package:tas/modules/auth/pages/login_page.dart';
import 'package:tas/modules/splash/pages/loading_page.dart';
import 'package:tas/modules/splash/pages/splash_page.dart';
import 'package:tas/modules/tutorial/pages/step_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StepOne(),
    );
  }
}

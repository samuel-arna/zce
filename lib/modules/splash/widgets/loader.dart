import 'package:flutter/material.dart';
import 'package:tas/core/utils/colors/original_colors.dart';
import 'package:tas/modules/auth/pages/login_page.dart';

class LoaderSplash extends StatefulWidget {
  const LoaderSplash({super.key});

  @override
  State<LoaderSplash> createState() => _LoaderSplashState();
}

class _LoaderSplashState extends State<LoaderSplash> {
  double progress = 1;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        progress = 350;
      });
    });
    Future.delayed(
      const Duration(seconds: 6),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginPage(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: OriginalColors.secoundary,
          width: 350,
          height: 8,
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 5),
          color: OriginalColors.primary,
          width: progress,
          height: 8,
        ),
      ],
    );
  }
}

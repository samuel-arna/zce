import 'package:flutter/material.dart';

import 'package:tas/modules/splash/widgets/loader.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 134),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 75,
                width: 284,
                child: Image.asset(
                  'assets/images/logo1.png',
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                children: [
                  LoaderSplash(),
                  Padding(
                    padding: EdgeInsets.only(top: 14),
                    child: Column(
                      children: [
                        Text(
                          'Resursos Base...',
                          style: TextStyle(fontSize: 23),
                        ),
                        Text(
                          'Carregando avaliações...',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

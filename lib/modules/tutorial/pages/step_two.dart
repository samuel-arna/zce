import 'package:flutter/material.dart';
import 'package:tas/core/utils/colors/original_colors.dart';
import 'package:tas/modules/splash/pages/splash_page.dart';
import 'package:tas/modules/tutorial/widgets/steps_dot.dart';

class StepTwo extends StatefulWidget {
  const StepTwo({super.key});

  @override
  State<StepTwo> createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 84),
            child: Text(
              'Permita a localização',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 30, right: 30, bottom: 10),
            child: Text(
              'Para participar dos treinamentos presenciais e realizar check-in e check-out em seus treinamentos.',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset('assets/images/tuto2_a.png'),
          Image.asset('assets/images/tuto2_b.png'),
          const Padding(
            padding: EdgeInsets.only(top: 51, bottom: 40),
            child: StepsDot(step: 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 44,
                  width: 153,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Center(
                    child: Text(
                      'NEGAR',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 26,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SplashPage())),
                child: Container(
                  height: 44,
                  width: 153,
                  decoration: BoxDecoration(
                    color: OriginalColors.purple,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Center(
                    child: Text(
                      'PERMITIR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

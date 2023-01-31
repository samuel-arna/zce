import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tas/core/utils/colors/original_colors.dart';
import 'package:tas/modules/tutorial/controllers/tutorial_controller.dart';
import 'package:tas/modules/tutorial/pages/step_two.dart';
import 'package:tas/modules/tutorial/widgets/steps_dot.dart';

class StepOne extends StatefulWidget {
  const StepOne({super.key});

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  final controller = TutorialController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 84),
            child: Text(
              'Seja bem vindo',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 30, right: 30, bottom: 10),
            child: Text(
              'ao aplicativo NOME DO PROJETO. A partir de agora, ele será seu parceiro no aprendizado. Portanto, aproveite ao máximo todos os recursos e conteúdos para aprender cada vez mais e se tornar um expert.',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset('assets/images/tuto1.png'),
          const Padding(
            padding: EdgeInsets.only(top: 51, bottom: 40),
            child: StepsDot(
              step: 1,
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.changeStep(2);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const StepTwo(),
                ),
              );
            },
            child: Container(
              height: 44,
              width: 153,
              decoration: BoxDecoration(
                color: OriginalColors.purple,
                borderRadius: BorderRadius.circular(9),
              ),
              child: const Center(
                child: Text(
                  'INICIAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

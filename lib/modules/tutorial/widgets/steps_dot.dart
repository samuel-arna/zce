import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tas/modules/auth/controllers/auth_controller.dart';
import 'package:tas/modules/tutorial/controllers/tutorial_controller.dart';

class StepsDot extends StatefulWidget {
  final int step;

  const StepsDot({super.key, required this.step});

  @override
  State<StepsDot> createState() => _StepsDotState();
}

class _StepsDotState extends State<StepsDot> {
  final controller = TutorialController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color:
                  widget.step == 1 ? Colors.grey : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color:
                  widget.step == 2 ? Colors.grey : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color:
                  widget.step == 3 ? Colors.grey : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color:
                  widget.step == 4 ? Colors.grey : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color:
                  widget.step == 5 ? Colors.grey : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tas/core/utils/colors/original_colors.dart';
import 'package:tas/modules/auth/controllers/auth_controller.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  final AuthController controller = AuthController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.toggleRemember(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Observer(
            builder: (_) {
              return Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: controller.remember
                      ? OriginalColors.primary
                      : Colors.white,
                ),
              );
            },
          ),
          const SizedBox(
            width: 6,
          ),
          const Text(
            'Lembrar-me',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

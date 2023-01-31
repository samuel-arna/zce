import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tas/core/utils/colors/original_colors.dart';
import 'package:tas/modules/auth/controllers/auth_controller.dart';
import 'package:tas/modules/auth/pages/forgot_page.dart';
import 'package:tas/modules/auth/widgets/background_auth.dart';
import 'package:tas/modules/auth/widgets/input_auth.dart';
import 'package:tas/modules/auth/widgets/remember_me.dart';
import 'package:tas/modules/tutorial/pages/step_one.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usuario = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final AuthController authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundAuth(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 101, bottom: 79),
                      child: Image.asset('assets/images/logo_2.png'),
                    ),
                    Observer(builder: (_) {
                      return InputAuth(
                        value: authController.email,
                        pass: false,
                        controller: usuario,
                        label: 'Usuário',
                        onChange: (txt) => authController.changeEmail(txt),
                      );
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    Observer(builder: (_) {
                      return InputAuth(
                        value: authController.password,
                        pass: true,
                        controller: pass,
                        label: 'Senha',
                        onChange: (txt) => authController.changePass(txt),
                      );
                    }),
                    const Padding(
                      padding: EdgeInsets.only(top: 9.0, right: 40),
                      child: RememberMe(),
                    ),
                    const SizedBox(
                      height: 54,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const StepOne())),
                          child: Container(
                            height: 40,
                            width: 350,
                            decoration: BoxDecoration(
                              color: OriginalColors.primary,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: const Center(
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const ForgotPage(),
                            ),
                          ),
                          child: const Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'V2.0',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

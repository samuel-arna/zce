import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tas/core/utils/colors/original_colors.dart';
import 'package:tas/modules/auth/controllers/auth_controller.dart';
import 'package:tas/modules/auth/widgets/background_auth.dart';
import 'package:tas/modules/auth/widgets/input_auth.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
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
                    const Text(
                      'Esqueci a senha!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Text(
                          'Por favor insira seu e-mail, estaremos enviando as instruções de recuperação de senha no seu e-mail.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Observer(builder: (_) {
                      return InputAuth(
                        value: authController.email,
                        pass: false,
                        controller: usuario,
                        label: 'E-mail',
                        onChange: (txt) => authController.changeEmail(txt),
                      );
                    }),
                    const SizedBox(
                      height: 54,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => {},
                          child: Container(
                            height: 40,
                            width: 350,
                            decoration: BoxDecoration(
                              color: OriginalColors.primary,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: const Center(
                              child: Text(
                                'RECUPERAR',
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
                          height: 45,
                        ),
                        GestureDetector(
                          onTap: () => {Navigator.pop(context)},
                          child: Container(
                            height: 40,
                            width: 350,
                            decoration: BoxDecoration(
                              color: OriginalColors.secoundary,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: const Center(
                              child: Text(
                                'VOLTAR',
                                style: TextStyle(
                                  color: OriginalColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
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

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:quitanda/src/config/custom_colors.dart';
import 'package:quitanda/src/pages/auth/controller/auth_controller.dart';
import 'package:quitanda/src/pages/base/base_screen.dart';
import 'package:quitanda/src/pages/common_widgets/app_name_widget.dart';
import 'package:quitanda/src/pages_routes/app_pages.dart';

import '../common_widgets/custom_text_field.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final _foreKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Nome do App
                    const AppNameWidget(
                      titleMainColor: Colors.white,
                      textSize: 40,
                    ),

                    // Categorias
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                        child: AnimatedTextKit(
                            pause: Duration.zero,
                            repeatForever: true,
                            animatedTexts: [
                              FadeAnimatedText("Frutas"),
                              FadeAnimatedText("Verduras"),
                              FadeAnimatedText("Legumes"),
                              FadeAnimatedText("Carnes"),
                              FadeAnimatedText("Cereais"),
                              FadeAnimatedText("Laticinios"),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
                ),
                child: Form(
                  key: _foreKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Email
                      CustomTextField(
                        controller: emailController,
                        icon: Icons.email,
                        label: "Email",
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return "Digite seu email!";
                          }
                          if (!email.isEmail) {
                            return "Digite um email válido!";
                          }
                          return null;
                        },
                      ),
                      // Senha
                      CustomTextField(
                        controller: passwordfController,
                        icon: Icons.lock,
                        label: "Senha",
                        isSecret: true,
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return "Digite um senha!";
                          }
                          if (password.length < 7) {
                            return "Digite uma senha com pelo menos 7 caracteres.";
                          }
                          return null;
                        },
                      ),
                      // Botão de Entrar
                      SizedBox(
                        height: 50,
                        child: GetX<AuthController>(
                          builder: (authController) {
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                backgroundColor: Colors.green,
                              ),
                              onPressed: authController.isLoading.value
                                  ? null
                                  : () {
                                      FocusScope.of(context).unfocus();
                                      if (_foreKey.currentState!.validate()) {
                                        String email = emailController.text;
                                        String password =
                                            passwordfController.text;

                                        authController.signIn(
                                          email: email,
                                          password: password,
                                        );
                                      } else {
                                        print("Campos não válidos!");
                                      }

                                      // Get.offNamed(PagesRoutes.baseRoute);
                                    },
                              child: authController.isLoading.value
                                  ? const CircularProgressIndicator()
                                  : const Text(
                                      "Entrar",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                            );
                          },
                        ),
                      ),
                      // Esqueceu a Senha
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Esqueceu a Senha?",
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                            ),
                          ),
                        ),
                      ),
                      // Divisor
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text("Ou"),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Criar Conta
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                side: const BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                )),
                            onPressed: () {
                              Get.offNamed(PagesRoutes.signUpRoute);
                            },
                            child: const Text(
                              "Criar Conta",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

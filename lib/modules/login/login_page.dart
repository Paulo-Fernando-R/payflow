import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/modules/login/login_controller.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    //pega tamanho da tela
    final size = MediaQuery.of(context).size;
    //
    return Scaffold(
      //bacground
      backgroundColor: AppColors.background,
      //pilha
      body: Container(
        //faz pegar o tamanho inteiro da tela
        width: size.width,
        height: size.height,
        //
        child: Stack(
          children: [
            //pilha componentes
            Container(
              //cor de cima no tamanho certo
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            //
            Positioned(
                // posicionando a imagem
                top: 40,
                left: 0,
                right: 0,
                //inserindo e mudando o tamanho da imagem
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )
                //
                ),
            //

            Positioned(
              //adicionando botao e
              bottom: size.height * 0.10,
              left: 0,
              right: 0,
              child: Column(
                //
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //colocando imagem

                  Image.asset(AppImages.logomini),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                      //texto e estilo de texto
                      "Organize seus boletos em um só lugar",
                      style: App_text_styles.titleHome,
                      textAlign: TextAlign.center,
                      //
                    ),
                  ),
                  //
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: SocialLoginButton(
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      //
    );
  }
}

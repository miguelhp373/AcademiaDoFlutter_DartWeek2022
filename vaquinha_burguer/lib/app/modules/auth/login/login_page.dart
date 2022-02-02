import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaquinha_burguer/app/core/ui/vaquinha_uI.dart';
import 'package:vaquinha_burguer/app/core/ui/widgets/vaquinha_appbar.dart';
import 'package:vaquinha_burguer/app/core/ui/widgets/vaquinha_button.dart';
import 'package:vaquinha_burguer/app/core/ui/widgets/vaquinha_textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VaquinhaAppbar(elevation: 0),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (_, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: context.textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.theme.primaryColorDark),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      VaquinhaTextformfield(label: 'E-mail'),
                      const SizedBox(
                        height: 20,
                      ),
                      VaquinhaTextformfield(
                        label: 'Senha',
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: VaquinhaButton(
                          label: 'Entrar',
                          onPressed: () {},
                          width: context.width,
                        ),
                      ),
                      const Spacer(), //tudo abaixo deste componente irá empurrar para baixo
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Não possui uma conta?'),
                          TextButton(
                            onPressed: () {
                              Get.toNamed('/auth/register');
                            },
                            child: Text(
                              'Cadastre-se',
                              style: VaquinhaUI.textBold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

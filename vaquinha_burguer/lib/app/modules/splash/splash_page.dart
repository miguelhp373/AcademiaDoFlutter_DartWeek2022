import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaquinha_burguer/app/core/ui/widgets/vaquinha_button.dart';
import 'package:vaquinha_burguer/app/modules/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF140E0E),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: context.heightTransformer(reducedBy: 85),
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    VaquinhaButton(
                      label: 'Acessar',
                      onPressed: () => {
                        controller.checkedLogged(),
                      },
                      width: context.widthTransformer(reducedBy: 40),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

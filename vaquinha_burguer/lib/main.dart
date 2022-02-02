import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaquinha_burguer/app/core/ui/vaquinha_uI.dart';
import 'package:vaquinha_burguer/app/routes/auth_routers.dart';
import 'package:vaquinha_burguer/app/routes/splash_routes.dart';

void main() {
  runApp(const VaquinhaBurguerMainApp());
}

class VaquinhaBurguerMainApp extends StatelessWidget {
  const VaquinhaBurguerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vaquinha Burguer',
      theme: VaquinhaUI.theme,
      getPages: [
        //os ... significa que ele vai destruir o array e construi-lo em um novo
        ...AuthRouters.routers,
        ...SplashRoutes.routers,
      ],
    );
  }
}

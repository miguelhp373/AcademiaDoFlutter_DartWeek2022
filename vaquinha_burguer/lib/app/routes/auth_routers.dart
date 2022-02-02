import 'package:get/get.dart';
import 'package:vaquinha_burguer/app/modules/auth/login/login_page.dart';
import 'package:vaquinha_burguer/app/modules/auth/login/register_page.dart';

class AuthRouters {
  AuthRouters._(); //construtor privado

  static final routers = <GetPage>[
    GetPage(
      name: '/auth/login',
      page: () => const LoginPage(),
    ),
    GetPage(
      name: '/auth/register',
      page: () => const RegisterPage(),
    )
  ];
}

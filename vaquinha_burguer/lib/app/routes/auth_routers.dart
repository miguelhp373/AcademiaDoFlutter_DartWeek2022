import 'package:get/get.dart';
import 'package:vaquinha_burguer/app/modules/auth/login/login_bindings.dart';
import 'package:vaquinha_burguer/app/modules/auth/login/login_page.dart';
import 'package:vaquinha_burguer/app/modules/auth/register/register_bindings.dart';
import 'package:vaquinha_burguer/app/modules/auth/register/register_page.dart';

class AuthRouters {
  AuthRouters._(); //construtor privado

  static final routers = <GetPage>[
    GetPage(
      name: '/auth/login',
      binding: LoginBindings(),
      page: () => const LoginPage(),
    ),
    GetPage(
      name: '/auth/register',
      binding: RegisterBindings(),
      page: () => const RegisterPage(),
    )
  ];
}

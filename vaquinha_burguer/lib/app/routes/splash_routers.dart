import 'package:get/get.dart';
import 'package:vaquinha_burguer/app/modules/splash/splash_bindings.dart';
import 'package:vaquinha_burguer/app/modules/splash/splash_page.dart';

class SplashRoutes {
  SplashRoutes._();
  static final routers = <GetPage>[
    GetPage(
      name: '/',
      binding: SplashBindings(),
      page: () => const SplashPage(),
    )
  ];
}

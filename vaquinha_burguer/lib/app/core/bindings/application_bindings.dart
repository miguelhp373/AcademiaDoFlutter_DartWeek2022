import 'package:get/get.dart';
import 'package:vaquinha_burguer/app/core/rest_client/rest_client.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RestClient(),
      fenix: true,
    ); //mantem independente de sair ou nao da pagina, mantem a aplicação ativa
  }
}

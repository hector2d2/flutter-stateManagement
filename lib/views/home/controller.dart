import 'package:manejador_estados/custom_state_management/custom_controller.dart';

class HomeController extends CustomController {
  int counter = 0;

  void increment() {
    counter++;
    print(counter);
    update();
  }
}

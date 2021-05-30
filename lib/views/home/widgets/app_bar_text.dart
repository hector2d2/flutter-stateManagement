import 'package:flutter/material.dart';
import 'package:manejador_estados/custom_state_management/custom_provider.dart';
import 'package:manejador_estados/views/home/controller.dart';

class AppBarText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = CustomProvider.of<HomeController>(context);
    return Text('${controller.counter}');
  }
}

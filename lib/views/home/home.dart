import 'package:flutter/material.dart';
import 'package:manejador_estados/custom_state_management/custom_provider.dart';
import 'package:manejador_estados/views/home/controller.dart';
import 'package:manejador_estados/views/home/widgets/app_bar_text.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomProvider<HomeController>(
      controller: HomeController(),
      child: Scaffold(
        appBar: AppBar(
          title: AppBarText(),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('hola'),
              Builder(builder: (BuildContext context) {
                final controller = CustomProvider.of<HomeController>(context);
                return Text(
                  '${controller.counter}',
                  style: TextStyle(fontSize: 30),
                );
              })
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (BuildContext context) {
            final controller = CustomProvider.of<HomeController>(context);
            return FloatingActionButton(
              onPressed: () {
                controller.increment();
              },
              child: Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}

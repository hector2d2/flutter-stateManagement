import 'package:flutter/material.dart';

import 'custom_controller.dart';

class CustomProvider<T extends CustomController> extends InheritedWidget {
  CustomProvider({
    Key key = const Key('customProvider'),
    required this.controller,
    required Widget child,
  }) : super(key: key, child: child);

  final T controller;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static T of<T extends CustomController>(BuildContext context) {
    final provider =
        context.getElementForInheritedWidgetOfExactType<CustomProvider<T>>();
    return (provider?.widget as CustomProvider).controller as T;
  }
}

import 'package:flutter/widgets.dart';

class HomePageNavigationList extends InheritedWidget {
  final List<WidgetBuilder> routes;

  const HomePageNavigationList({super.key, required super.child, required this.routes});

  @override
  bool updateShouldNotify(covariant HomePageNavigationList oldWidget) {
    return oldWidget.routes != routes;
  }

  static HomePageNavigationList of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<HomePageNavigationList>()!;
}

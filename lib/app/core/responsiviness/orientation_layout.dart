import 'package:flutter/widgets.dart';

class OrientationLayout extends StatelessWidget {
  final Map<Orientation, WidgetBuilder> supportedOrientations;

  const OrientationLayout({super.key, required this.supportedOrientations});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      WidgetBuilder? screen;
      switch (orientation) {
        case Orientation.portrait:
          screen = supportedOrientations[Orientation.portrait];
          break;
        case Orientation.landscape:
          screen = supportedOrientations[Orientation.landscape];
          break;
      }
      return screen != null ? screen(context) : const SizedBox();
    });
  }
}

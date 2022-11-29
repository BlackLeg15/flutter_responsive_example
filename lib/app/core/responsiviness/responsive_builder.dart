import 'package:flutter/widgets.dart';

import 'device_screen_type_parser.dart';
import 'sizing_information.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;
  final bool isRoot;

  const ResponsiveBuilder({super.key, required this.builder, this.isRoot = false});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          final sizingInformation = SizingInformation(
            orientation: orientation,
            deviceType: DeviceScreenTypeParser.getDeviceScreenTypeByMediaQuery(
                isRoot ? constraints.smallest.shortestSide : mediaQuery.size.shortestSide),
            deviceSize: isRoot ? Size(constraints.maxWidth, constraints.maxHeight) : mediaQuery.size,
            localWidgetSize: Size(constraints.maxWidth, constraints.maxHeight),
          );
          return builder(context, sizingInformation);
        },
      );
    });
  }
}

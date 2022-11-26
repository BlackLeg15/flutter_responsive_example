import 'package:flutter/widgets.dart';

import 'device_screen_type_parser.dart';
import 'sizing_information.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext, SizingInformation) builder;

  const ResponsiveBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, constraints) {
      final sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceType: DeviceScreenTypeParser.getDeviceScreenTypeByMediaQuery(mediaQuery),
        deviceSize: mediaQuery.size,
        localWidgetSize: Size(constraints.maxWidth, constraints.maxHeight),
      );
      return builder(context, sizingInformation);
    });
  }
}

import 'package:flutter/cupertino.dart';

import 'device_screen_type.dart';
import 'responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Map<DeviceScreenType, WidgetBuilder> supportedLayouts;
  final bool isRoot;

  const ScreenTypeLayout({super.key, required this.supportedLayouts, this.isRoot = false});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        isRoot: isRoot,
        builder: (context, sizingInformation) {
          WidgetBuilder? screen;
          switch (sizingInformation.deviceType) {
            case DeviceScreenType.mobile:
              screen = supportedLayouts[DeviceScreenType.mobile];
              break;
            case DeviceScreenType.tablet:
              screen = supportedLayouts[DeviceScreenType.tablet];
              break;
            case DeviceScreenType.desktop:
              screen = supportedLayouts[DeviceScreenType.desktop];
              break;
          }
          if (screen != null) {
            return screen(context);
          }
          final defaultScreen = supportedLayouts[DeviceScreenType.mobile];
          if (defaultScreen != null) {
            return defaultScreen(context);
          }
          return const SizedBox();
        });
  }
}

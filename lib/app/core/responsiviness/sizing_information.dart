import 'package:flutter/widgets.dart';

import 'device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final Size deviceSize;
  final DeviceScreenType deviceType;
  final Size localWidgetSize;

  const SizingInformation({
    required this.orientation,
    required this.deviceType,
    required this.deviceSize,
    required this.localWidgetSize,
  });
}

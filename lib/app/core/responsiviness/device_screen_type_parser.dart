
import 'device_screen_type.dart';

abstract class DeviceScreenTypeParser {
  static DeviceScreenType getDeviceScreenTypeByMediaQuery(double shortestSide) {
    if (shortestSide > 950) {
      return DeviceScreenType.desktop;
    }
    if (shortestSide > 600) {
      return DeviceScreenType.tablet;
    }
    return DeviceScreenType.mobile;
  }
}

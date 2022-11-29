import 'package:flutter/material.dart';

import 'core/responsiviness/device_screen_type.dart';
import 'core/responsiviness/orientation_layout.dart';
import 'core/responsiviness/screen_type_layout.dart';
import 'modules/home/home_page.dart';
import 'modules/home/mobile/mobile_landscape_home_page.dart';
import 'modules/home/mobile/mobile_portrait_home_page.dart';
import 'modules/home/widgets/home_page_navigation_list/home_page_navigation_list.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => ScreenTypeLayout(
              isRoot: true,
              supportedLayouts: {
                DeviceScreenType.mobile: (context) => HomePageNavigationList(
                      routes: [
                        (context) => const HomePage(title: 'Counter Page'),
                      ],
                      child: OrientationLayout(
                        supportedOrientations: {
                          Orientation.portrait: (context) => const MobilePortraitHomePage(),
                          Orientation.landscape: (context) => const MobileLandscapeHomePage(),
                        },
                      ),
                    ),
              },
            )
      },
    );
  }
}

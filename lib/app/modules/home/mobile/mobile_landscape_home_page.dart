import 'package:flutter/material.dart';

import '../widgets/app_drawer/app_drawer_mobile.dart';
import '../widgets/home_page_navigation_list/home_page_navigation_list.dart';

class MobileLandscapeHomePage extends StatefulWidget {
  const MobileLandscapeHomePage({super.key});

  @override
  State<MobileLandscapeHomePage> createState() => _MobileLandscapeHomePageState();
}

class _MobileLandscapeHomePageState extends State<MobileLandscapeHomePage> {
  var routes = <WidgetBuilder>[];

  @override
  void didChangeDependencies() {
    final navigationList = HomePageNavigationList.of(context);
    routes = navigationList.routes;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          AppDrawerMobile(
            routes: routes,
          )
        ],
      ),
    );
  }
}

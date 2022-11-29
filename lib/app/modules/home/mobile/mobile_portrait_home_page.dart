import 'package:flutter/material.dart';
import 'package:flutter_responsive_example/app/modules/home/widgets/home_page_navigation_list/home_page_navigation_list.dart';

import '../widgets/app_drawer/app_drawer_mobile.dart';

class MobilePortraitHomePage extends StatefulWidget {
  const MobilePortraitHomePage({super.key});

  @override
  State<MobilePortraitHomePage> createState() => _MobilePortraitHomePageState();
}

class _MobilePortraitHomePageState extends State<MobilePortraitHomePage> {
  var routes = <WidgetBuilder>[];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    final navigationList = HomePageNavigationList.of(context);
    routes = navigationList.routes;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      drawer: AppDrawerMobile(routes: routes),
      body: Column(
        children: const [],
      ),
    );
  }
}

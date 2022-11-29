import 'package:flutter/material.dart';
import 'package:flutter_responsive_example/app/modules/home/widgets/app_drawer_option/app_drawer_option.dart';

class AppDrawerMobile extends StatelessWidget {
  final List<WidgetBuilder> routes;
  const AppDrawerMobile({super.key, required this.routes});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final orientation = mediaQuery.orientation;
    final navigationList = routes
        .map((route) => AppDrawerOption(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => route(context)));
              },
              icon: const Icon(Icons.data_array),
              label: 'Counter',
              isPortrait: orientation == Orientation.portrait,
            ))
        .toList();

    return Container(
      width: orientation == Orientation.portrait ? 250 : 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 16, color: Colors.black12)],
      ),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: mediaQuery.viewPadding.top + 10),
        itemBuilder: (context, index) => navigationList[index],
        separatorBuilder: (context, index) => const Divider(),
        itemCount: routes.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppDrawerOption extends StatelessWidget {
  final Widget icon;
  final String label;
  final void Function() onTap;
  final bool isPortrait;
  const AppDrawerOption({super.key, required this.onTap, required this.icon, required this.label, required this.isPortrait});

  @override
  Widget build(BuildContext context) {
    if (isPortrait) {
      return ElevatedButton.icon(onPressed: onTap, icon: icon, label: Text(label));
    }
    return ElevatedButton(onPressed: onTap, child: icon);
  }
}

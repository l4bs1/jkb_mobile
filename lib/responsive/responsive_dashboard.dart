import 'package:flutter/material.dart';

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({
    super.key,
    required this.mobileDashboard,
    required this.tabletDashboard,
    required this.desktopDashboard,
  });

  final Widget mobileDashboard;
  final Widget tabletDashboard;
  final Widget desktopDashboard;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileDashboard;
        } else if (constraints.maxWidth < 1100) {
          return tabletDashboard;
        } else {
          return desktopDashboard;
        }
      },
    );
  }
}

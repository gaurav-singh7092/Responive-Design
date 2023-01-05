import 'package:flutter/material.dart';

import '../desktop_body.dart';
import '../mobile_body.dart';
class ResponsiveDesign extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveDesign({super.key, required this.mobile, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        if(constraints.maxWidth < 600) {
          return MobileBody();
        } else {
          return DesktopBody();
        }
      },
    );
  }
}

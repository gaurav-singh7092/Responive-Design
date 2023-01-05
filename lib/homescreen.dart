import 'package:assignment/desktop_body.dart';
import 'package:assignment/mobile_body.dart';
import 'package:assignment/responsive/responsive_design.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveDesign(mobile: MobileBody(), desktop: DesktopBody(),)
    );
  }
}

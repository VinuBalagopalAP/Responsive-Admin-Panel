import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/screens/dashboard/dashboard_screen.dart';
import 'package:responsive_admin_panel/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Expanded(
            // It takes 1/6 part of the screen, ie, flex = 1
            child: SideMenu(),
          ),
          Expanded(
            // It takes 5/6 part of the screen
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      )),
    );
  }
}

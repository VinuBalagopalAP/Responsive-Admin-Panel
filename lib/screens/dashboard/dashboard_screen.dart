import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/screens/dashboard/components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: <Widget>[
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  child: Container(
                    height: 500,
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

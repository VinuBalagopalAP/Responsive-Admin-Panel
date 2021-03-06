import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/core/constants.dart';
import 'package:responsive_admin_panel/screens/dashboard/components/header.dart';
import 'package:responsive_admin_panel/screens/dashboard/components/myfiles.dart';
import 'package:responsive_admin_panel/screens/dashboard/components/storage_details.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Expanded(flex: 2, child: MyFiles()),
                SizedBox(width: defaultPadding),
                Expanded(
                  child: StorageDetails(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

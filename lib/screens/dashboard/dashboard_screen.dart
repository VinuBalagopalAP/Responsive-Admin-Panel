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
          children: [
            Row(
              children: <Widget>[
                Text(
                  'Dashboard',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Spacer(flex: 2),
                const Expanded(
                  child: SearchField(),
                ),
                const ProfileCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        border: Border.all(color: Colors.white10),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: const Header(),
    );
  }
}

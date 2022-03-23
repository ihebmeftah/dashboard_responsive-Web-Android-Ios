import 'package:dashboard/views/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../components/components.dart';

class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          menuSection(),
          Expanded(
            flex: 4,
            child: Container(
              color: HexColor("E7E6E8"),
            ),
          )
        ],
      ),
    );
  }
}

Widget menuSection() {
  return Expanded(
      child: Container(
    color: HexColor("030303"),
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Dash",
                  style: ThemesApp().textinlightthemeforbgBlac,
                ),
                const SizedBox(
                  height: 40,
                ),
                customlisttilte(
                  title: "Overview",
                  iconleading: Icons.production_quantity_limits,
                  icontrailing: Icons.arrow_forward_ios,
                ),
                const SizedBox(
                  height: 10,
                ),
                customlisttilte(
                  title: "Employees",
                  iconleading: Icons.person,
                  icontrailing: Icons.arrow_forward_ios,
                ),
                const SizedBox(
                  height: 10,
                ),
                customlisttilte(
                  title: "Tasks",
                  iconleading: Icons.task,
                  icontrailing: Icons.arrow_forward_ios,
                ),
                const SizedBox(
                  height: 10,
                ),
                customlisttilte(
                  title: "Message",
                  iconleading: Icons.message,
                  icontrailing: Icons.arrow_forward_ios,
                ),
                const SizedBox(
                  height: 10,
                ),
                customlisttilte(
                  title: "Setting",
                  iconleading: Icons.settings,
                  icontrailing: Icons.arrow_forward_ios,
                ),
              ],
            ),
            Column(
              children: [
                const Divider(
                  color: Colors.white,
                  height: 2,
                ),
                customlisttilte(
                  title: "Log out",
                  iconleading: Icons.logout,
                ),
              ],
            ),
          ]),
    ),
  ));
}

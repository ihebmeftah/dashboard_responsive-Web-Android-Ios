import 'package:dashboard/controllers/controller.dart';
import 'package:dashboard/views/screens/overviewScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../components/components.dart';

class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width <= 1131 ||
              GetPlatform.isAndroid ||
              GetPlatform.isIOS
          ? AppBar(
              backgroundColor: Colors.black,
            )
          : null,
      drawer: MediaQuery.of(context).size.width <= 1131 ||
              GetPlatform.isAndroid ||
              GetPlatform.isIOS
          ? const Drawer()
          : null,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // print(constraints.maxWidth.toInt());
          return GetBuilder<Controller>(
            init: Controller(),
            builder: (controller) {
              return Row(
                children: [
                  Visibility(
                      visible:
                          constraints.maxWidth.toInt() <= 1131 ? false : true,
                      child: MediaQuery(
                          data: constraints.maxWidth.toInt() <= 1288
                              ? MediaQuery.of(context)
                                  .copyWith(textScaleFactor: 0.7)
                              : MediaQuery.of(context)
                                  .copyWith(textScaleFactor: 1),
                          child: menuSection(controller))),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      color: HexColor("E7E6E8"),
                      child: IndexedStack(
                          index: controller.selcted,
                          children: const [
                            OverviewScreen(),
                            Text("employee"),
                            Text("tasks"),
                            Text("message"),
                            Text("setting"),
                          ]),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}

Widget menuSection(Controller cntrl) {
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
                Image.asset(
                  'assets/logo.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 40,
                ),
                customlisttilte(
                    title: "Overview",
                    iconleading: Icons.production_quantity_limits,
                    icontrailing: Icons.arrow_forward_ios,
                    onTap: () {
                      cntrl.navigation(0);
                    }),
                const SizedBox(
                  height: 10,
                ),
                customlisttilte(
                    title: "Players",
                    iconleading: Icons.person,
                    icontrailing: Icons.arrow_forward_ios,
                    onTap: () {
                      cntrl.navigation(1);
                    }),
                const SizedBox(
                  height: 10,
                ),
                customlisttilte(
                    title: "Calendar",
                    iconleading: Icons.task,
                    icontrailing: Icons.arrow_forward_ios,
                    onTap: () {
                      cntrl.navigation(2);
                    }),
                const SizedBox(
                  height: 10,
                ),
                customlisttilte(
                    title: "Schedule",
                    iconleading: Icons.message,
                    icontrailing: Icons.arrow_forward_ios,
                    onTap: () {
                      cntrl.navigation(3);
                    }),
                const SizedBox(
                  height: 10,
                ),
                customlisttilte(
                    title: "Setting",
                    iconleading: Icons.settings,
                    icontrailing: Icons.arrow_forward_ios,
                    onTap: () {
                      cntrl.navigation(4);
                    }),
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

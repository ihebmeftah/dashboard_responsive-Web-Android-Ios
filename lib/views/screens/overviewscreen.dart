// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    height: 140,
                    width: 180,
                    decoration: BoxDecoration(
                      color: HexColor("ACD3FB"),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(child: Text("Overview"))),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    height: 140,
                    width: 180,
                    decoration: BoxDecoration(
                      color: HexColor("A5FDB4"),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(child: Text("Overview"))),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    height: 140,
                    width: 180,
                    decoration: BoxDecoration(
                      color: HexColor("BAACD5"),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(child: Text("Overview"))),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.white54,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Iheb meftah',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Id : 516165446551',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}

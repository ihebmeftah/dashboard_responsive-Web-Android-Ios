// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Wrap(
                  runSpacing: 10,
                  spacing: 20,
                  children: [
                    Container(
                        height: 140,
                        width: 160,
                        decoration: BoxDecoration(
                          color: HexColor("ACD3FB"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Overview"))),
                    Container(
                        height: 140,
                        width: 160,
                        decoration: BoxDecoration(
                          color: HexColor("A5FDB4"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Overview"))),
                    Container(
                        height: 140,
                        width: 160,
                        decoration: BoxDecoration(
                          color: HexColor("BAACD5"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Overview"))),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  runSpacing: 10,
                  spacing: 20,
                  children: [
                    Container(
                        height: 140,
                        width: 160,
                        decoration: BoxDecoration(
                          color: HexColor("ACD3FB"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Overview"))),
                    Container(
                        height: 140,
                        width: 160,
                        decoration: BoxDecoration(
                          color: HexColor("A5FDB4"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Overview"))),
                    Container(
                        height: 140,
                        width: 160,
                        decoration: BoxDecoration(
                          color: HexColor("BAACD5"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Overview"))),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white54,
            ),
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

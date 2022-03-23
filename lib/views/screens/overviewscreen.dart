// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 180,
          width: 240,
          decoration: BoxDecoration(
            color: HexColor("A5FDB4"),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(child: Text("Overview"))),
    );
  }
}

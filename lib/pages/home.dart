import 'package:flutter/material.dart';
import 'package:samandar/pages/containers/container1.dart';
import 'package:samandar/pages/containers/container2.dart';
import 'package:samandar/pages/containers/container3.dart';
import 'package:samandar/pages/containers/container4.dart';
import 'package:samandar/utils/constants.dart';
import 'package:samandar/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              Container3(),
              Container4(),
            ],
          ),
        ),
      ),
    );
  }
}

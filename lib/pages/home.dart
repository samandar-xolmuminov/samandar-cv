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
  final container1Key = GlobalKey();
  final container2Key = GlobalKey();
  final container3Key = GlobalKey();
  final container4Key = GlobalKey();
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
              NavBar(itemKey1: container1Key,itemKey2: container2Key,itemKey3: container3Key,itemKey4: container4Key,),
              Container1(key: container1Key,),
              Container2(key: container2Key,),
              Container3(key: container3Key,),
              Container4(key: container4Key,),
            ],
          ),
        ),
      ),
    );
  }
}

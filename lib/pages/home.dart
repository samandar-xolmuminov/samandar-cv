import 'dart:developer';
import 'dart:html';

import 'package:dio/dio.dart';
import 'package:elbek/models/instagram_user.dart';
import 'package:elbek/pages/containers/container5.dart';
import 'package:elbek/pages/containers/container6.dart';
import 'package:elbek/pages/containers/container6_1.dart';
import 'package:elbek/pages/containers/container7.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/pages/containers/container1.dart';
import 'package:elbek/pages/containers/container2.dart';
import 'package:elbek/pages/containers/container3.dart';
import 'package:elbek/pages/containers/container4.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final container1Key = GlobalKey();
  final container3Key = GlobalKey();
  final container4Key = GlobalKey();
  final container5Key = GlobalKey();
  final container6Key = GlobalKey();
  final container6_1Key = GlobalKey();

  Future<void> sendMessage(bool isSend,String email,String text) async {
    var BOT_TOKEN = token;
    final username = (await Telegram(BOT_TOKEN).getMe()).username;
    var teledart = TeleDart(BOT_TOKEN, Event(username!));
    teledart.sendMessage('5925263907',
        "Email: "
        "Time: "
        "Message: "
        "");
    teledart.start();
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ScreenTypeLayout(
              mobile: navBarMobile(),
              desktop: navBarDesktop(),
              tablet: navBarTablet(),
            ),
            Container1(
              key: container1Key,
              container6_1Key: container6_1Key,
            ),
            Container3(
              key: container3Key,
            ),
            Container4(
              key: container4Key,
            ),
            Container5(
              key: container5Key,
            ),
            Container6(
              key: container6Key,
            ),
            const Container2(),
            Container6_1(key: container6_1Key,),
            Container7(

            ),
          ],
        ),
      ),
    );
  }

  Widget navBarMobile() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navLogo(),
            PopupMenuButton(
              splashRadius: 25,
              icon: const Icon(Icons.menu),
              padding: const EdgeInsets.all(0),
              constraints: BoxConstraints(minWidth: w!),
              clipBehavior: Clip.none,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container1Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Home',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container3Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About Me',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container4Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Expertise',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container5Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Achievements',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container6Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Projects',
                        ),
                      ],
                    ),
                  ),
                ];
              },
            )
          ],
        ),
      );

  Widget navBarDesktop() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navLogo(),
            Row(
              children: [
                navButton('Home', container1Key),
                navButton('About Me', container3Key),
                navButton('Expertise', container4Key),
                navButton('Achievements', container5Key),
                navButton('Projects', container6Key),
              ],
            ),
            Container(
              height: 40,
              width: 120,
              child: ElevatedButton(
                onPressed: () async {
                  await Scrollable.ensureVisible(container6_1Key.currentContext ?? context,
                      duration: const Duration(seconds: 2));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.onprimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Text("LET'S TALK", style: GoogleFonts.akatab()),
              ),
            ),
          ],
        ),
      );

  Widget navBarTablet() => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 70,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navLogo(),
              Row(
                children: [
                  navButton('Home', container1Key),
                  navButton('About Me', container3Key),
                  navButton('Expertise', container4Key),
                  navButton('Achievements', container5Key),
                  navButton('Projects', container6Key),
                ],
              ),
              Container(
                height: 40,
                width: 120,
                child: ElevatedButton(
                  onPressed: () async {
                    await Scrollable.ensureVisible(container6_1Key.currentContext ?? context,
                        duration: const Duration(seconds: 2));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.onprimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  child: Text("LET'S TALK", style: GoogleFonts.akatab()),
                ),
              ),
            ],
          ),
        ),
      );

  Widget navButton(String text, GlobalKey key1) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
          onPressed: () async {
            await Scrollable.ensureVisible(key1.currentContext ?? context,
                duration: const Duration(seconds: 1));
          },
          child: Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
        ));
  }

  Widget navLogo() {
    return Container(
      height: 40,
      width: 120,
      child: ElevatedButton(
        onPressed: () async {
          AnchorElement anchorElement =
          AnchorElement(href: 'assets/cv.pdf');
          anchorElement.download = "Samandar's CV";
          anchorElement.click();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.onprimary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0))),
        child: Text("Download CV", style: GoogleFonts.akatab()),
      ),
    );
  }
}

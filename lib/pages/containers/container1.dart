import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
      tablet: TabletContainer1(),
    );
  }

// ========================== MOBILE ==========================
  Widget MobileContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                SelectableText.rich(
                  TextSpan(text: "Hi, I’m ", children: [
                    TextSpan(
                      text: "Elbek Mirzamakhmudov",
                      style:
                          GoogleFonts.abhayaLibre(color: AppColors.onprimary),
                    ),
                    const TextSpan(text: '\na Mobile App (Flutter) developer.')
                  ]),
                  style: GoogleFonts.abhayaLibre(
                      fontSize: h! *0.06, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'I’m a Mobile App (Flutter) developer based in Tashkent and enjoy creating apps & websites. I love travelling, game & music.',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(115, 40),
                            backgroundColor: AppColors.onprimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Text("CONTACT ME",style: GoogleFonts.akatab()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(1000)),
            child: Container(
              height: h! * 0.6,
              child: Image.asset('assets/elbek.jpg'),
            ),
          ),
        ],
      ),
    );
  }

  // ========================== DESKTOP ==========================
  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 11, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 650),
            width: w!*.4,
            child: Column(
              children: [
                SelectableText.rich(
                  TextSpan(text: "Hi, I’m ", children: [
                    TextSpan(
                      text: "Elbek Mirzamakhmudov",
                      style:
                          GoogleFonts.abhayaLibre(color: AppColors.onprimary),
                    ),
                    const TextSpan(text: '\na Mobile App (Flutter) developer.')
                  ]),
                  style: GoogleFonts.abhayaLibre(
                      fontSize: w! / 30, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'I’m a Mobile App (Flutter) developer based in Tashkent and enjoy creating apps & websites. I love travelling, game & music.',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(115, 40),
                          backgroundColor: AppColors.onprimary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                      child: Text("CONTACT ME",style: GoogleFonts.akatab(),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(1000)),
            child: Container(
              height: h! * 0.5,
              child: Image.asset('assets/elbek.jpg'),
            ),
          ),
        ],
      ),
    );
  }
  // ========================== TABLET ==========================
  Widget TabletContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: w!*0.5,

            child: Column(
              children: [
                SelectableText.rich(
                  TextSpan(text: "Hi, I’m ", children: [
                    TextSpan(
                      text: "Elbek Mirzamakhmudov",
                      style:
                          GoogleFonts.abhayaLibre(color: AppColors.onprimary),
                    ),
                    const TextSpan(text: '\na Mobile App (Flutter) developer.')
                  ]),
                  style: GoogleFonts.abhayaLibre(
                      fontSize: w!*0.06, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'I’m a Mobile App (Flutter) developer based in Tashkent and enjoy creating apps & websites. I love travelling, game & music.',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(115, 40),
                          backgroundColor: AppColors.onprimary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                      child: Text("CONTACT ME",style: GoogleFonts.akatab(),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(1000)),
            child: Container(
              height: h!*0.4,
              constraints: BoxConstraints(minHeight: 400,maxWidth: w!*0.3),
              child: Image.asset('assets/elbek.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

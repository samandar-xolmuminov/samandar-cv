import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container6 extends StatelessWidget {
  const Container6({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DesktopContainer6(),
      desktop: DesktopContainer6(),
      tablet: DesktopContainer6(),
    );
  }

  Widget DesktopContainer6() {
    return Container(
      child: Column(
        children: [
          Text(
            'Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.bodoniModa(
                fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.red,
              ),
              Column(
                children: [
                  Text(
                    'Hello',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

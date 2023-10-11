import "package:flutter/material.dart";
import "package:flutter_devicon/flutter_devicon.dart";
import "package:flutter_vector_icons/flutter_vector_icons.dart";
import "package:google_fonts/google_fonts.dart";
import "package:responsive_builder/responsive_builder.dart";
import "package:samandar/utils/colors.dart";
import "package:url_launcher/url_launcher.dart";

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DesktopContainer2(),
      desktop: DesktopContainer2(),
      tablet: DesktopContainer2(),
    );
  }

  Widget DesktopContainer2() {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [const Color(0xfffce9e1), Colors.grey.shade50],
        begin: Alignment.topRight,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Row(),
          Text(
            'Flutter Features',
            style: GoogleFonts.bodoniModa(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 30,
            runSpacing: 30,
            children: [
              featuresInfo(
                  'What is Flutter?',
                  "Flutter is an open source framework developed and supported by Google. Frontend and full-stack developers use Flutter to build an application's user interface (UI) for multiple platforms with a single codebase.",
                  FlutterDEVICON.flutter_plain),
              featuresInfo(
                  'Mobile App development',
                  'Flutter is an awesome framework for building mobile apps. It offers fast development times, beautiful and responsive designs, and a single codebase for both iOS and Android.',
                  Ionicons.ios_phone_portrait_outline),
              featuresInfo(
                  'Web App development',
                  'The web itself is a flexible platform, but Flutter is ideal for building web applications like PWAs or SPAs and bringing your existing mobile app to the web.',
                  MaterialCommunityIcons.web),
            ],
          ),
          SizedBox(height: 50,),
          ElevatedButton(
            onPressed: () {
              launch('https://flutter.dev/');
            },

            child: Text(
              'VIEW MORE FEATURES',
              style: GoogleFonts.akatab(color: AppColors.onprimary,fontWeight: FontWeight.w500),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200, 50),
              elevation: 0,
              backgroundColor: const Color(0xfffce9e1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Padding featuresInfo(String title, String subtitle, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Wrap(
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: [
          Icon(
            iconData,
            color: AppColors.onprimary,
            size: 70,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.bodoniModa(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.bodoniModa(
                      fontSize: 15, color: Colors.grey.shade500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

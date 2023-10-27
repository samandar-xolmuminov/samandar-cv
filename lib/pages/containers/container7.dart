import 'package:elbek/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Container7 extends StatelessWidget {
  const Container7({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer7(),
      desktop: DesktopContainer7(),
      tablet: TabletContainer7(),
    );
  }

  Widget DesktopContainer7() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w!*0.15),
      width: w!,
      height: 70,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          Wrap(
            children: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://www.facebook.com/profile.php?id=100090950464057');
                  },
                  icon: const Icon(MaterialCommunityIcons.facebook)),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://www.instagram.com/xsa_samandar');
                  },
                  icon: const Icon(MaterialCommunityIcons.instagram)),

              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch(
                        'https://www.youtube.com/@SamandarXolmuminov-bk9qb');
                  },
                  icon: const Icon(MaterialCommunityIcons.youtube)),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch('https://t.me/XolmuminovSamandar');
                },
                icon: const Icon(Icons.send_rounded),
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch('https://github.com/samandar-xolmuminov');
                },
                icon: const Icon(MaterialCommunityIcons.github),
              ),


            ],
          ),
          Text('© 2023 CV. All Rights Reserved.',style: GoogleFonts.aBeeZee(fontSize: 16),),
           SelectableText.rich(TextSpan(
              text: 'Developed by ',style: GoogleFonts.aBeeZee(fontSize: 16), children: [TextSpan(text: 'Samandar',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold))]))
        ],
      ),
    );
  }
  Widget MobileContainer7() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      width: w!,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Wrap(
            children: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://www.facebook.com/profile.php?id=100090950464057');
                  },
                  icon: const Icon(MaterialCommunityIcons.facebook)),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://www.instagram.com/xsa_samandar');
                  },
                  icon: const Icon(MaterialCommunityIcons.instagram)),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch(
                        'https://www.youtube.com/@SamandarXolmuminov-bk9qb');
                  },
                  icon: const Icon(MaterialCommunityIcons.youtube)),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch('https://t.me/XolmuminovSamandar');
                },
                icon: const Icon(Icons.send_rounded),
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch('https://github.com/samandar-xolmuminov');
                },
                icon: const Icon(MaterialCommunityIcons.github),
              ),
            ],
          ),
          Text('© 2023 CV. All Rights Reserved.',style: GoogleFonts.aBeeZee(fontSize: 16),),
           SelectableText.rich(TextSpan(
              text: 'Developed by ',style: GoogleFonts.aBeeZee(fontSize: 16), children: [TextSpan(text: 'Samandar',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold))]))
        ],
      ),
    );
  }
  Widget TabletContainer7() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(10),
      width: w!,
      child: Wrap(
        spacing: 40,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Wrap(
            children: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://www.facebook.com/profile.php?id=100090950464057');
                  },
                  icon: const Icon(MaterialCommunityIcons.facebook)),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://www.instagram.com/xsa_samandar');
                  },
                  icon: const Icon(MaterialCommunityIcons.instagram)),

              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch(
                        'https://www.youtube.com/@SamandarXolmuminov-bk9qb');
                  },
                  icon: const Icon(MaterialCommunityIcons.youtube)),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch('https://t.me/XolmuminovSamandar');
                },
                icon: const Icon(Icons.send_rounded),
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch('https://github.com/samandar-xolmuminov');
                },
                icon: const Icon(MaterialCommunityIcons.github),
              ),
            ],
          ),
          Text('© 2023 CV. All Rights Reserved.',style: GoogleFonts.aBeeZee(fontSize: 16),),
           SelectableText.rich(TextSpan(
              text: 'Developed by ',style: GoogleFonts.aBeeZee(fontSize: 16), children: [TextSpan(text: 'Samandar',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold))]))
        ],
      ),
    );
  }
}

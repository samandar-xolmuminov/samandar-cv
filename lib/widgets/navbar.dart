import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:samandar/utils/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
      tablet: TabletNavBar(),
    );
  }
// ========================== MOBILE ==========================
  Widget MobileNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.search),
          navLogo(),
            const Icon(Icons.menu),

        ],
      ),
    );
  }
  // ========================== DESKTOP ==========================
  Widget DesktopNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Home'),
              navButton('About'),
              navButton('Expertise'),
              navButton('Skills'),
            ],
          ),
          Container(
            height: 40,
            width: 120,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor:
             AppColors.onprimary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
              child: Text("LET'S TALK",style: GoogleFonts.akatab()),
            ),
          ),
        ],
      ),
    );
  }

  // ========================== TABLET ==========================
  Widget TabletNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(

            children: [
              navButton('Home'),
              navButton('About'),
              navButton('Expertise'),
              navButton('Skills'),
            ],
          ),
          Container(
            height: 40,
            width: 120,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor:
             AppColors.onprimary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
              child: Text("LET'S TALK",style: GoogleFonts.akatab()),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10 ),
      child: TextButton(onPressed: (){},child: Text(text,style: const TextStyle(color: Colors.black,fontSize: 18),),)
    );
  }

  Widget navLogo(){
    return Container(
      width: 110,
      child: GradientText('CV', colors: [Colors.red.shade800,Colors.red],),
    );
  }
}

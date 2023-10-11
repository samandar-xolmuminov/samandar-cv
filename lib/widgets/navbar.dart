import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:samandar/utils/colors.dart';
import 'package:samandar/utils/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NavBar extends StatefulWidget {
  final GlobalKey itemKey1;
  final GlobalKey itemKey2;
  final GlobalKey itemKey3;
  final GlobalKey itemKey4;
  const NavBar({super.key, required this.itemKey1, required this.itemKey2, required this.itemKey3, required this.itemKey4});

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
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.search),
          navLogo(),
          PopupMenuButton(
            splashRadius: 25,
            icon: Icon(Icons.menu),
            padding: EdgeInsets.all(0),
            constraints: BoxConstraints(minWidth: w!),
            clipBehavior: Clip.none,
            itemBuilder: (context) {
            return [
              PopupMenuItem(
                onTap: () async {
                  await Scrollable.ensureVisible(widget.itemKey1.currentContext!,duration: Duration(seconds: 1));
                },
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Home',),
                ],
              ),),
              PopupMenuItem(
                onTap:() async {
                  await Scrollable.ensureVisible(widget.itemKey2.currentContext!,duration: Duration(seconds: 1));
                },
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('About',),
                ],
              ),),
              PopupMenuItem(
                onTap:() async {
                  await Scrollable.ensureVisible(widget.itemKey3.currentContext!,duration: Duration(seconds: 1));
                },
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Biography',),
                ],
              ),),
              PopupMenuItem(
                onTap:() async {
                  await Scrollable.ensureVisible(widget.itemKey4.currentContext!,duration: Duration(seconds: 1));
                },
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Skills',),
                ],
              ),),
            ];
          },)
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
              navButton('Home',widget.itemKey1.currentContext!),
              navButton('About',widget.itemKey2.currentContext!),
              navButton('Biography',widget.itemKey3.currentContext!),
              navButton('Skills',widget.itemKey4.currentContext!),
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
              navButton('Home',widget.itemKey1.currentContext!),
              navButton('About',widget.itemKey2.currentContext!),
              navButton('Biography',widget.itemKey3.currentContext!),
              navButton('Skills',widget.itemKey4.currentContext!),
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

  Widget navButton(String text,BuildContext? context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10 ),
      child: TextButton(onPressed: () async {
        if(context!=null){
          await Scrollable.ensureVisible(context,duration: Duration(seconds: 1));
        }
      },child: Text(text,style: const TextStyle(color: Colors.black,fontSize: 18),),)
    );
  }

  Widget navLogo(){
    return Container(
      width: 110,
      child: GradientText('CV', colors: [Colors.red.shade800,Colors.red],),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:samandar/pages/containers/container1.dart';
import 'package:samandar/pages/containers/container2.dart';
import 'package:samandar/pages/containers/container3.dart';
import 'package:samandar/pages/containers/container4.dart';
import 'package:samandar/utils/colors.dart';
import 'package:samandar/utils/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
        child: Column(
          children: [
            ScreenTypeLayout(
              mobile: navBarMobile(),
              desktop: navBarDesktop(),
              tablet: navBarTablet(),
            ),
            Container1(key: container1Key,),
            Container2(key: container2Key,),
            Container3(key: container3Key,),
            Container4(key: container4Key,),
          ],
        ),
      ),
    );
  }
  Widget navBarMobile()=> Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.search),
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
                onTap: ()  async {
                  await Scrollable.ensureVisible(container1Key.currentContext ?? context,duration: const Duration(seconds: 1));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Home',),
                  ],
                ),),
              PopupMenuItem(
                onTap:()  async {
                  await Scrollable.ensureVisible(container2Key.currentContext ?? context,duration: const Duration(seconds: 1));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('About',),
                  ],
                ),),
              PopupMenuItem(
                onTap:()  async {
                  await Scrollable.ensureVisible(container3Key.currentContext ?? context,duration: const Duration(seconds: 1));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Biography',),
                  ],
                ),),
              PopupMenuItem(
                onTap:()  async {
                  await Scrollable.ensureVisible(container4Key.currentContext ?? context,duration: const Duration(seconds: 1));
                },
                child: const Row(
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
  Widget navBarDesktop()=>Container(
    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton('Home',container1Key.currentContext ),
            navButton('About',container2Key.currentContext),
            navButton('Biography',container3Key.currentContext),
            navButton('Skills',container4Key.currentContext),
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
  Widget navBarTablet()=>Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(

          children: [
            navButton('Home',container1Key.currentContext ),
            navButton('About',container2Key.currentContext),
            navButton('Biography',container3Key.currentContext ),
            navButton('Skills',container4Key.currentContext ),
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




  Widget navButton(String text,BuildContext? context1){
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10 ),
        child: TextButton(onPressed: ()  async {
          await Scrollable.ensureVisible(context1 ?? context,duration: const Duration(seconds: 1));

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

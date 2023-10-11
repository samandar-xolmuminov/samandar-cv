// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:responsive_builder/responsive_builder.dart';
// import 'package:samandar/pages/home.dart';
// import 'package:samandar/pages/home.dart';
// import 'package:samandar/utils/colors.dart';
// import 'package:samandar/utils/constants.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';
//
// class NavBar extends StatefulWidget {
//
//   const NavBar({super.key,});
//
//   @override
//   State<NavBar> createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return ScreenTypeLayout(
//       mobile: MobileNavBar(),
//       desktop: DesktopNavBar(),
//       tablet: TabletNavBar(),
//     );
//   }
// // ========================== MOBILE ==========================
//   Widget MobileNavBar(){
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 20),
//       height: 70,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Icon(Icons.search),
//           navLogo(),
//           PopupMenuButton(
//             splashRadius: 25,
//             icon: const Icon(Icons.menu),
//             padding: const EdgeInsets.all(0),
//             constraints: BoxConstraints(minWidth: w!),
//             clipBehavior: Clip.none,
//             itemBuilder: (context) {
//             return [
//               PopupMenuItem(
//                 onTap: ()  {
//                     Scrollable.ensureVisible(container1Key.currentContext!,duration: const Duration(seconds: 1));
//                 },
//                 child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Home',),
//                 ],
//               ),),
//               PopupMenuItem(
//                 onTap:()  {
//                      Scrollable.ensureVisible(container2Key.currentContext!,duration: const Duration(seconds: 1));
//                   },
//                 child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('About',),
//                 ],
//               ),),
//               PopupMenuItem(
//                 onTap:()  {
//                        Scrollable.ensureVisible(container3Key.currentContext!,duration: const Duration(seconds: 1));
//                   },
//                 child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Biography',),
//                 ],
//               ),),
//               PopupMenuItem(
//                 onTap:()  {
//                    Scrollable.ensureVisible(container4Key.currentContext!,duration: const Duration(seconds: 1));
//                 },
//                 child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Skills',),
//                 ],
//               ),),
//             ];
//           },)
//         ],
//       ),
//     );
//   }
//   // ========================== DESKTOP ==========================
//   Widget DesktopNavBar(){
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//       height: 70,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           navLogo(),
//           Row(
//             children: [
//               navButton('Home',container1Key.currentContext!),
//               navButton('About',container2Key.currentContext!),
//               navButton('Biography',container3Key.currentContext!),
//               navButton('Skills',container4Key.currentContext!),
//             ],
//           ),
//           Container(
//             height: 40,
//             width: 120,
//             child: ElevatedButton(
//               onPressed: (){},
//               style: ElevatedButton.styleFrom(backgroundColor:
//              AppColors.onprimary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
//               child: Text("LET'S TALK",style: GoogleFonts.akatab()),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // ========================== TABLET ==========================
//   Widget TabletNavBar(){
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       height: 70,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           navLogo(),
//           Row(
//
//             children: [
//               navButton('Home',container1Key.currentContext!),
//               navButton('About',container2Key.currentContext!),
//               navButton('Biography',container3Key.currentContext!),
//               navButton('Skills',container4Key.currentContext!),
//             ],
//           ),
//           Container(
//             height: 40,
//             width: 120,
//             child: ElevatedButton(
//               onPressed: (){},
//               style: ElevatedButton.styleFrom(backgroundColor:
//              AppColors.onprimary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
//               child: Text("LET'S TALK",style: GoogleFonts.akatab()),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget navButton(String text,BuildContext context){
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 10 ),
//       child: TextButton(onPressed: ()  {
//            Scrollable.ensureVisible(context,duration: const Duration(seconds: 1));
//
//       },child: Text(text,style: const TextStyle(color: Colors.black,fontSize: 18),),)
//     );
//   }
//
//   Widget navLogo(){
//     return Container(
//       width: 110,
//       child: GradientText('CV', colors: [Colors.red.shade800,Colors.red],),
//     );
//   }
// }

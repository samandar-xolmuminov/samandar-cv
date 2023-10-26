
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Container5 extends StatelessWidget {
  const Container5({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DesktopContainer5(),
      desktop: DesktopContainer5(),
      tablet: DesktopContainer5(),
    );
  }

  Widget DesktopContainer5() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: AppColors.backColor,
          ),
          child: Column(
            children: [
              Text(
                'Certificates & Diplomas',
                textAlign: TextAlign.center,
                style: GoogleFonts.bodoniModa(
                    fontSize: 45, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              CarouselSlider(
                items: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.grey.shade300),
                    ], color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image.asset('assets/pdp.jpeg',fit: BoxFit.cover,),
                        ),
                        const SizedBox(height: 10,),
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                          child: SelectableText.rich(
                              TextSpan(text: """I won the prize of a laptop by taking the honorable""",children: [
                                TextSpan(text: ' 2nd ',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold)),
                                const TextSpan(text: 'place in the gold league of the republic stage at the Mathematics Science Olympiad organized by '),
                                TextSpan(text: '\nPDP University',style: GoogleFonts.aBeeZee(color: Colors.blue,),recognizer: TapGestureRecognizer()..onTap = () => launch('https://university.pdp.uz/en')),
                                const TextSpan(text: ', which is one of the best IT universities in Tashkent.'),
                              ]),
                          style: GoogleFonts.aBeeZee(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),),
                        ),),
                        // TextButton(
                        //     onPressed: () {
                        //       launch('https://www.youtube.com/watch?v=VBpkKp6X99s&ab_channel=PDPUniversity');
                        //     },
                        //     style: TextButton.styleFrom(
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(0),
                        //         ),
                        //         elevation: 0,
                        //         backgroundColor:
                        //         Colors.white),
                        //     child:  Row(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         Text('View More',style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.blue),),
                        //         const SizedBox(
                        //           width: 5,
                        //         ),
                        //         const Icon(
                        //           Icons.open_in_new,
                        //           size: 15,
                        //           color: Colors.blue,
                        //         )
                        //       ],
                        //     ))

                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.grey.shade300),
                    ], color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image.asset('assets/balatech.jpeg',fit: BoxFit.cover,),
                        ),
                        const SizedBox(height: 10,),
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                          child: SelectableText.rich(
                              TextSpan(text: "I won the",children: [
                                TextSpan(text: ' 3rd ',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold)),
                                const TextSpan(text: 'place in the first round of the international programming Olympiad between the 10th and 11th grades organized by '),
                                TextSpan(text: 'Balatech',style: GoogleFonts.aBeeZee(color: Colors.blue,),recognizer: TapGestureRecognizer()..onTap = () => launch('http://balatech.org/')),
                                const TextSpan(text: ', a universal educational platform for learning mobile literacy in Russian and Kyrgyz languages.'),
                              ]),
                          style: GoogleFonts.aBeeZee(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),),
                        ),),
                        TextButton(
                            onPressed: () {
                              launch('https://it-park.uz/en/itpark/news/uzbekistan-took-second-place-at-the-balatech-international-olympiad');
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                                backgroundColor:
                                Colors.white),
                            child:  Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('View More',style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.blue),),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.open_in_new,
                                  size: 15,
                                  color: Colors.blue,
                                )
                              ],
                            ))

                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.grey.shade300),
                    ], color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: Image.asset('assets/sat.png',fit: BoxFit.fill,),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                          child: Center(
                            child: SelectableText.rich(
                                TextSpan(text: "Digital SAT score - 1450\n\nMath section - 780\n\nEBRW section - 670",),
                            style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                          ),
                        ),),
                        // TextButton(
                        //     onPressed: () {
                        //       launch('https://www.uzreport.news/society/uzbek-citizens-to-test-their-language-level-at-gtc');
                        //     },
                        //     style: TextButton.styleFrom(
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(0),
                        //         ),
                        //         elevation: 0,
                        //         backgroundColor:
                        //         Colors.white),
                        //     child:  Row(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         Text('View More',style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.blue),),
                        //         const SizedBox(
                        //           width: 5,
                        //         ),
                        //         const Icon(
                        //           Icons.open_in_new,
                        //           size: 15,
                        //           color: Colors.blue,
                        //         )
                        //       ],
                        //     ))

                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.grey.shade300),
                    ], color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image.asset('assets/geo.png',fit: BoxFit.cover,),
                        ),
                        const SizedBox(height: 10,),
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                          child: SelectableText.rich(
                              TextSpan(text: "Geography State Olympiad ",children: [
                                TextSpan(text: '3rd Place Winner',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold)),
                                const TextSpan(text: ': Demonstrated proficiency in cartography and extensive knowledge of world countries and their industries.'),
                              ]),
                          style: GoogleFonts.aBeeZee(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),),
                        ),),
                        // TextButton(
                        //     onPressed: () {
                        //       launch('');
                        //     },
                        //     style: TextButton.styleFrom(
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(0),
                        //         ),
                        //         elevation: 0,
                        //         backgroundColor:
                        //         Colors.white),
                        //     child:  Row(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         Text('View More',style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.blue),),
                        //         const SizedBox(
                        //           width: 5,
                        //         ),
                        //         const Icon(
                        //           Icons.open_in_new,
                        //           size: 15,
                        //           color: Colors.blue,
                        //         )
                        //       ],
                        //     ))

                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.grey.shade300),
                    ], color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Container(
                              width: 300,
                              child: Image.asset('assets/info.png',fit: BoxFit.fitWidth,)),
                        ),
                        const SizedBox(height: 10,),
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                          child: SelectableText.rich(
                              TextSpan(text: "Placed ",children: [
                                TextSpan(text: '2nd',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold)),
                                const TextSpan(text: 'in the Computer Science State Olympiad, demonstrating proficient coding abilities in Python.'),
                              ]),
                          style: GoogleFonts.aBeeZee(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),),
                        ),),
                        // TextButton(
                        //     onPressed: () {
                        //       launch('');
                        //     },
                        //     style: TextButton.styleFrom(
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(0),
                        //         ),
                        //         elevation: 0,
                        //         backgroundColor:
                        //         Colors.white),
                        //     child:  Row(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         Text('View More',style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.blue),),
                        //         const SizedBox(
                        //           width: 5,
                        //         ),
                        //         const Icon(
                        //           Icons.open_in_new,
                        //           size: 15,
                        //           color: Colors.blue,
                        //         )
                        //       ],
                        //     ))

                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.grey.shade300),
                    ], color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset('assets/grad.png',fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                          child: SelectableText.rich(
                              TextSpan(text: "Graduate of the Year - 2023",),
                          style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                        ),),
                        // TextButton(
                        //     onPressed: () {
                        //       launch('');
                        //     },
                        //     style: TextButton.styleFrom(
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(0),
                        //         ),
                        //         elevation: 0,
                        //         backgroundColor:
                        //         Colors.white),
                        //     child:  Row(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         Text('View More',style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.blue),),
                        //         const SizedBox(
                        //           width: 5,
                        //         ),
                        //         const Icon(
                        //           Icons.open_in_new,
                        //           size: 15,
                        //           color: Colors.blue,
                        //         )
                        //       ],
                        //     ))

                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.grey.shade300),
                    ], color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image.asset('assets/sprint.jpg',fit: BoxFit.cover,),
                        ),
                        const SizedBox(height: 10,),
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                          child: SelectableText.rich(
                              TextSpan(text: "4-time State Champion and 1-time National Champion in the 100m sprint (2017-2020)\n· 2-time State Champion in the 200m sprint    (2019-2020)",),
                          style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                        ),),
                        // TextButton(
                        //     onPressed: () {
                        //       launch('');
                        //     },
                        //     style: TextButton.styleFrom(
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(0),
                        //         ),
                        //         elevation: 0,
                        //         backgroundColor:
                        //         Colors.white),
                        //     child:  Row(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         Text('View More',style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.blue),),
                        //         const SizedBox(
                        //           width: 5,
                        //         ),
                        //         const Icon(
                        //           Icons.open_in_new,
                        //           size: 15,
                        //           color: Colors.blue,
                        //         )
                        //       ],
                        //     ))

                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                    height: 500,
                    viewportFraction: 330 / w!,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.1,
                    pauseAutoPlayOnTouch: true,
                    autoPlay: true,
                    pageSnapping: true,
                    autoPlayAnimationDuration: const Duration(seconds: 1)),
              )
            ],
          ),
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  AppColors.backColor,
                  AppColors.backColor,
                  Colors.grey.shade50,],
                begin: Alignment.topRight),
          ),
        )
      ],
    );
  }
//
// Widget DesktopContainer5() {
//   return ;
// }
}

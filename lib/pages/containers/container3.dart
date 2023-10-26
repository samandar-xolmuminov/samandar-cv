import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container2State();
}

class _Container2State extends State<Container3> {
  Color color1 = AppColors.primary;
  Color color2 = AppColors.primary;
  Color color3 = AppColors.primary;
  Color color4 = AppColors.primary;
  Color color5 = AppColors.primary;
  Color color6 = AppColors.primary;

  launchMaps() async {
    String googleUrl =
        'comgooglemaps://?center=${41.28054373614124},${69.21323979009713}';
    String appleUrl =
        'https://maps.apple.com/?sll=${41.28054373614124},${69.21323979009713}';
    if (await canLaunch("comgooglemaps://")) {
      print('launching com googleUrl');
      await launch(googleUrl);
    } else if (await canLaunch(appleUrl)) {
      print('launching apple url');
      await launch(appleUrl);
    } else {
      throw 'Could not launch url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
      tablet: TabletContainer3(),
    );
  }

  // ================= DESKTOP =================
  Widget DesktopContainer3() {
    return Container(
      width: w,
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            children: [
              Container(
                  width: w! / 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70, right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'About Me',
                            style: GoogleFonts.bodoniModa(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          """A proactive high school graduate of Presidential School in Jizzakh with strong academic achievement and work experience in Mobile App Development. Possesses strong leadership and programming skills with fluency in English and  Uzbek. Keen to pursue a career in Computer Science with a focus on Artificial Intelligence.""",
                          style: GoogleFonts.aBeeZee(
                            color: Colors.grey.shade600,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                width: 50,
              ),
              Container(
                width: w!/2,
                child: Wrap(

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color1 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color1 = AppColors.primary;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: null,
                                icon: Icon(
                                  Icons.person,
                                  color: AppColors.onprimary,
                                  size: 30,
                                ),
                                label: SelectableText(
                                  'Samandar Xolmuminov',
                                  style: TextStyle(fontSize: 20, color: color1),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color2 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color2 = AppColors.primary;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: () async {
                                  final smth = await launch(
                                      "mailto:xolmuminovsamandar5@gmail.com?${Uri.encodeComponent('Hello')}&body=${Uri.encodeComponent('Hello Brother')}");
                                },
                                icon: Icon(
                                  Icons.email_outlined,
                                  color: AppColors.onprimary,
                                  size: 30,
                                ),
                                label: Text(
                                  'xolmuminovsamandar5@gmail.com',
                                  style: TextStyle(fontSize: 20, color: color2),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color3 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color3 = AppColors.primary;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: null,
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: AppColors.onprimary,
                                  size: 30,
                                ),
                                label: SelectableText(
                                  '12 May, 2006',
                                  style: TextStyle(fontSize: 20, color: color3),
                                ),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color4 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color4 = AppColors.primary;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: () async {
                                  final Uri telUrl = Uri(
                                    scheme: 'tel',
                                    path: '+998936669953',
                                  );
                                  await launch('tel:+998936669953');
                                },
                                icon: Icon(
                                  Icons.call,
                                  size: 30,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  '(+998) 93 992 65 64',
                                  style: TextStyle(fontSize: 20, color: color4),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color5 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color5 = AppColors.primary;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: () {
                                  launchMaps();
                                },
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.onprimary,
                                  size: 30,
                                ),
                                label: Text(
                                  'Tashkent, Uzbekistan',
                                  style: TextStyle(fontSize: 20, color: color5),
                                ),
                              ),
                            )),
                        // MouseRegion(
                        //     onEnter: (event) {
                        //       setState(() {
                        //         color6 = AppColors.onprimary;
                        //       });
                        //     },
                        //     onExit: (event) {
                        //       setState(() {
                        //         color6 = AppColors.primary;
                        //       });
                        //     },
                        //
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: TextButton.icon(
                        //         onPressed: (){
                        //           launch("https://www.instagram.com/el.bekk/");
                        //         },
                        //         icon: Icon(
                        //           MaterialCommunityIcons.instagram,
                        //           color: AppColors.onprimary,
                        //         ),
                        //         label: Text(
                        //           'el.bekk',
                        //           style: TextStyle(fontSize: 15, color: color6),
                        //         ),
                        //       ),
                        //     )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  } // ================= TABLET =================

  Widget TabletContainer3() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'About Me',
                    style: GoogleFonts.bodoniModa(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  """A proactive high school graduate of Presidential School in Jizzakh with strong academic achievement and work experience in Mobile App Development. Possesses strong leadership and programming skills with fluency in English and  Uzbek. Keen to pursue a career in Computer Science with a focus on Artificial Intelligence.""",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    spacing: 70,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  color1 = AppColors.onprimary;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  color1 = AppColors.primary;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton.icon(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.person,
                                    color: AppColors.onprimary,
                                  ),
                                  label: SelectableText(
                                    'Samandar Xolmuminov',
                                    style:
                                        TextStyle(fontSize: 15, color: color1),
                                  ),
                                ),
                              )),
                          MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  color2 = AppColors.onprimary;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  color2 = AppColors.primary;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton.icon(
                                  onPressed: () async {
                                    final smth = await launch(
                                        "mailto:xolmuminovsamandar5@gmail.com?${Uri.encodeComponent('Hello')}&body=${Uri.encodeComponent('Hello Brother')}");
                                  },
                                  icon: Icon(
                                    Icons.email_outlined,
                                    color: AppColors.onprimary,
                                  ),
                                  label: Text(
                                    'xolmuminovsamandar5@gmail.com',
                                    style:
                                        TextStyle(fontSize: 15, color: color2),
                                  ),
                                ),
                              )),
                          MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  color3 = AppColors.onprimary;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  color3 = AppColors.primary;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton.icon(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: AppColors.onprimary,
                                  ),
                                  label: SelectableText(
                                    '12 May, 2006',
                                    style:
                                        TextStyle(fontSize: 15, color: color3),
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  color4 = AppColors.onprimary;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  color4 = AppColors.primary;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton.icon(
                                  onPressed: () async {
                                    final Uri telUrl = Uri(
                                      scheme: 'tel',
                                      path: '+998936669953',
                                    );
                                    await launch('tel:+998936669953');
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: AppColors.onprimary,
                                  ),
                                  label: Text(
                                    '(+998) 93 992 65 64',
                                    style:
                                        TextStyle(fontSize: 15, color: color4),
                                  ),
                                ),
                              )),
                          MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  color5 = AppColors.onprimary;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  color5 = AppColors.primary;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton.icon(
                                  onPressed: () {
                                    launchMaps();
                                  },
                                  icon: Icon(
                                    Icons.location_on_outlined,
                                    color: AppColors.onprimary,
                                  ),
                                  label: Text(
                                    'Tashkent, Uzbekistan',
                                    style:
                                        TextStyle(fontSize: 15, color: color5),
                                  ),
                                ),
                              )),
                          // MouseRegion(
                          //     onEnter: (event) {
                          //       setState(() {
                          //         color6 = AppColors.onprimary;
                          //       });
                          //     },
                          //     onExit: (event) {
                          //       setState(() {
                          //         color6 = AppColors.primary;
                          //       });
                          //     },
                          //
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: TextButton.icon(
                          //         onPressed: (){
                          //           launch("https://www.instagram.com/el.bekk/");
                          //         },
                          //         icon: Icon(
                          //           MaterialCommunityIcons.instagram,
                          //           color: AppColors.onprimary,
                          //         ),
                          //         label: Text(
                          //           'el.bekk',
                          //           style: TextStyle(fontSize: 15, color: color6),
                          //         ),
                          //       ),
                          //     )),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ================= MOBILE =================
  Widget MobileContainer3() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'About Me',
                    style: GoogleFonts.bodoniModa(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  """A proactive high school graduate of Presidential School in Jizzakh with strong academic achievement and work experience in Mobile App Development. Possesses strong leadership and programming skills with fluency in English and  Uzbek. Keen to pursue a career in Computer Science with a focus on Artificial Intelligence.""",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            color1 = AppColors.onprimary;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            color1 = AppColors.primary;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.person,
                              color: AppColors.onprimary,
                            ),
                            label: SelectableText(
                              'Samandar Xolmuminov',
                              style: TextStyle(fontSize: 15, color: color1),
                            ),
                          ),
                        )),
                    MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            color2 = AppColors.onprimary;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            color2 = AppColors.primary;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton.icon(
                            onPressed: () async {
                              final smth = await launch(
                                  "mailto:xolmuminovsamandar5@gmail.com?${Uri.encodeComponent('Hello')}&body=${Uri.encodeComponent('Hello Brother')}");
                            },
                            icon: Icon(
                              Icons.email_outlined,
                              color: AppColors.onprimary,
                            ),
                            label: Text(
                              'xolmuminovsamandar5@gmail.com',
                              style: TextStyle(fontSize: 15, color: color2),
                            ),
                          ),
                        )),
                    MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            color3 = AppColors.onprimary;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            color3 = AppColors.primary;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.calendar_today,
                              color: AppColors.onprimary,
                            ),
                            label: SelectableText(
                              '12 May, 2006',
                              style: TextStyle(fontSize: 15, color: color3),
                            ),
                          ),
                        )),
                    MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            color4 = AppColors.onprimary;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            color4 = AppColors.primary;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton.icon(
                            onPressed: () async {
                              final Uri telUrl = Uri(
                                scheme: 'tel',
                                path: '+998936669953',
                              );
                              await launch('tel:+998936669953');
                            },
                            icon: Icon(
                              Icons.call,
                              color: AppColors.onprimary,
                            ),
                            label: Text(
                              '(+998) 93 992 65 64',
                              style: TextStyle(fontSize: 15, color: color4),
                            ),
                          ),
                        )),
                    MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            color5 = AppColors.onprimary;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            color5 = AppColors.primary;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton.icon(
                            onPressed: () {
                              launchMaps();
                            },
                            icon: Icon(
                              Icons.location_on_outlined,
                              color: AppColors.onprimary,
                            ),
                            label: Text(
                              'Tashkent, Uzbekistan',
                              style: TextStyle(fontSize: 15, color: color5),
                            ),
                          ),
                        )),
                    // MouseRegion(
                    //     onEnter: (event) {
                    //       setState(() {
                    //         color6 = AppColors.onprimary;
                    //       });
                    //     },
                    //     onExit: (event) {
                    //       setState(() {
                    //         color6 = AppColors.primary;
                    //       });
                    //     },
                    //
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: TextButton.icon(
                    //         onPressed: (){
                    //           launch("https://www.instagram.com/el.bekk/");
                    //         },
                    //         icon: Icon(
                    //           MaterialCommunityIcons.instagram,
                    //           color: AppColors.onprimary,
                    //         ),
                    //         label: Text(
                    //           'el.bekk',
                    //           style: TextStyle(fontSize: 15, color: color6),
                    //         ),
                    //       ),
                    //     ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

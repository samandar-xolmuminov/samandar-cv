import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Container4 extends StatefulWidget {
  Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  Color stepperColor1 = AppColors.primary;
  Color stepperColor2 = AppColors.primary;
  Color stepperColor3 = AppColors.primary;
  Color stepperColor4 = AppColors.primary;
  Color stepperColor5 = AppColors.primary;
  Color stepperColor6 = AppColors.primary;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
      tablet: DesktopContainer4(),
    );
  }

  Widget DesktopContainer4() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.grey.shade50,
          AppColors.backColor,
        ],
        begin: Alignment.topRight,
      )),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 100,
        spacing: 50,
        children: [
          const Row(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Activities',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 500, maxHeight: 250),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.expand_circle_down_outlined,
                              color: AppColors.onprimary,
                            ),
                            Expanded(
                                child: VerticalDivider(
                              color: Colors.grey.shade300,
                              width: 1.5,
                              endIndent: 0,
                              indent: 0,
                              thickness: 1,
                            )),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 450),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  setState(() {
                                    stepperColor1 = AppColors.onprimary;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    stepperColor1 = AppColors.primary;
                                  });
                                },
                                child: InkWell(
                                  onTap: () {
                                    launch(
                                        'https://piima.uz/en/page/presidential-schools');
                                  },
                                  child: Text(
                                    'House President',
                                    style: GoogleFonts.aBeeZee(
                                      color: stepperColor1,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              // Text('Sep 2021 - Jun 2023',
                              //     style: GoogleFonts.aBeeZee(
                              //       color: Colors.grey.shade600,
                              //       fontSize: 17,
                              //     )),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                '· President of one of the 4 houses in school (House of Beruniy)\n· Conducted weekly meetings, addressing 40 students\' concerns and providing support.\n· Prepared students for inter-house competitions, fostering teamwork and competitiveness.\n· Organized weekly schedules for sports and leisure activities, ensuring engaging experiences.',
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.grey,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 500, maxHeight: 250),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.expand_circle_down_outlined,
                              color: AppColors.onprimary,
                            ),
                            Expanded(
                                child: VerticalDivider(
                              color: Colors.grey.shade300,
                              width: 1.5,
                              endIndent: 0,
                              indent: 0,
                              thickness: 1,
                            )),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 450),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  setState(() {
                                    stepperColor2 = AppColors.onprimary;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    stepperColor2 = AppColors.primary;
                                  });
                                },
                                child: InkWell(
                                  onTap: () {
                                    launch('https://tsue.uz/en');
                                  },
                                  child: Text(
                                    'Sprinter',
                                    style: GoogleFonts.aBeeZee(
                                      color: stepperColor2,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text('May 2017 -  Aug 2020',
                                  style: GoogleFonts.aBeeZee(
                                    color: Colors.grey.shade600,
                                    fontSize: 17,
                                  )),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                '· Consistently trained for 4 years .\n· Personal Best in 100m sprint: 11.62 seconds.\n·  Personal Best in 200m sprint: 25.36 seconds.\n·  4-time State Champion and 1-time National Champion in the 100m sprint (2017-2020).\n· 2-time State Champion in the 200m sprint (2019-2020).',
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.grey,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 500, maxHeight: 170),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.expand_circle_down_outlined,
                              color: AppColors.onprimary,
                            ),
                            Expanded(
                                child: VerticalDivider(
                              color: Colors.grey.shade300,
                              width: 1.5,
                              endIndent: 0,
                              indent: 0,
                              thickness: 1,
                            )),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 450),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  setState(() {
                                    stepperColor5 = AppColors.onprimary;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    stepperColor5 = AppColors.primary;
                                  });
                                },
                                child: InkWell(
                                  onTap: () {
                                    launch('https://tsue.uz/en');
                                  },
                                  child: Text(
                                    'Computer Gaming',
                                    style: GoogleFonts.aBeeZee(
                                      color: stepperColor5,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              // Text('Sep 2023 - Present',
                              //     style: GoogleFonts.aBeeZee(
                              //       color: Colors.grey.shade600,
                              //       fontSize: 17,
                              //     )),
                              const SizedBox(
                                height: 7,
                              ),
                              SelectableText.rich(TextSpan(
                                  text: '',
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.blue.shade300,
                                      fontSize: 17),
                                  children: [
                                    TextSpan(
                                        text: '· World of Tanks Blitz\n',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () =>
                                              launch('https://wotblitz.com/')),
                                    TextSpan(
                                        text:
                                            '· Counter-Strike: Global Offensive\n',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => launch(
                                              'https://en.wikipedia.org/wiki/Counter-Strike:_Global_Offensive')),
                                    TextSpan(
                                        text: '· Dota 2\n',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () =>
                                              launch('https://www.dota2.com/')),
                                    TextSpan(
                                        text: '· LOTR BFME 2\n',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => launch(
                                              'https://www.ea.com/games/lord-of-the-rings/the-lord-of-the-rings-the-battle-for-middle-earth-2')),
                                  ]))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Experience',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                constraints:
                    const BoxConstraints(maxWidth: 500, maxHeight: 220),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: AppColors.onprimary,
                        ),
                        Expanded(
                            child: VerticalDivider(
                          color: Colors.grey.shade300,
                          width: 1.5,
                          endIndent: 0,
                          indent: 0,
                          thickness: 1,
                        )),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 450),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                stepperColor3 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                stepperColor3 = AppColors.primary;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                launch('https://githubit.com/');
                              },
                              child: Text(
                                'Mobile App Developer in Githubit',
                                style: GoogleFonts.aBeeZee(
                                  color: stepperColor3,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Jun 2023 - Present",
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade600,
                                fontSize: 17,
                              )),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            'As a mobile app developer, I test and troubleshoot programs, monitor networks, update software and hardware, and provide customer support to ensure efficient and functional app performance. My role involves ensuring the smooth operation of apps and resolving any technical issues that may arise.',
                            style: GoogleFonts.aBeeZee(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                constraints:
                    const BoxConstraints(maxWidth: 500, maxHeight: 170),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: AppColors.onprimary,
                        ),
                        Expanded(
                            child: VerticalDivider(
                          color: Colors.grey.shade300,
                          width: 1.5,
                          endIndent: 0,
                          indent: 0,
                          thickness: 1,
                        )),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 450),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                stepperColor4 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                stepperColor4 = AppColors.primary;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                launch('https://t.me/JizzaxPrezidentMaktabi');
                              },
                              child: Text(
                                'Video Editor',
                                style: GoogleFonts.aBeeZee(
                                  color: stepperColor4,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Sep 2021 - Jun 2023",
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade600,
                                fontSize: 17,
                              )),
                          const SizedBox(
                            height: 7,
                          ),
                          SelectableText.rich(
                            TextSpan(
                                text: '- 2 years experience working on ',
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.grey,
                                  fontSize: 17,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'DaVinci Resolve',
                                      style: GoogleFonts.aBeeZee(
                                          color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => launch(
                                            'https://en.wikipedia.org/wiki/DaVinci_Resolve')),
                                  TextSpan(
                                      text:
                                          ' (video editing program).\n- 25 +  videos edited for the school\'s official telegram '),
                                  TextSpan(
                                      text: 'channel',
                                      style: GoogleFonts.aBeeZee(
                                          color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => launch(
                                            'https://t.me/JizzaxPrezidentMaktabi')),
                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                constraints:
                    const BoxConstraints(maxWidth: 500, maxHeight: 170),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: AppColors.onprimary,
                        ),
                        Expanded(
                            child: VerticalDivider(
                          color: Colors.grey.shade300,
                          width: 1.5,
                          endIndent: 0,
                          indent: 0,
                          thickness: 1,
                        )),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 450),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                stepperColor6 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                stepperColor6 = AppColors.primary;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                launch(
                                    'https://www.instagram.com/mehnatsevar_rasmiy/?utm_source=ig_web_button_share_sheet&igshid=OTQ5NTI0NzZiOA==');
                              },
                              child: Text(
                                'Coordinator',
                                style: GoogleFonts.aBeeZee(
                                  color: stepperColor6,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Jul 2023",
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade600,
                                fontSize: 17,
                              )),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            '· coordinated 31 students in the IT season of the Skills Camp.\n· helped to overcome the fear of public speaking.\n· taught basics of Flutter and Davinci Resolve.',
                            style: GoogleFonts.aBeeZee(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container customStepper(String url, String title, String duration,
      String subtitle, Color color, double height) {
    return Container(
      constraints: BoxConstraints(maxWidth: w!, maxHeight: height),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.expand_circle_down_outlined,
                color: AppColors.onprimary,
              ),
              Expanded(
                  child: VerticalDivider(
                color: Colors.grey.shade300,
                width: 1.5,
                endIndent: 0,
                indent: 0,
                thickness: 1,
              )),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: w! * 0.8),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color = AppColors.onprimary;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        color = AppColors.primary;
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        launch(url);
                      },
                      child: Text(
                        title,
                        style: GoogleFonts.aBeeZee(
                          color: color,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(duration,
                      style: GoogleFonts.aBeeZee(
                        color: Colors.grey.shade600,
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.aBeeZee(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget MobileContainer4() {
    return Container(
      color: AppColors.backColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Experience',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  customStepper(
                      'https://githubit.com/',
                      'Mobile App Developer in Githubit',
                      "Jun 2023 - Present",
                      'As a mobile app developer, I test and troubleshoot programs, monitor networks, update software and hardware, and provide customer support to ensure efficient and functional app performance. My role involves ensuring the smooth operation of apps and resolving any technical issues that may arise.',
                      stepperColor3,230),
                  customStepper(
                      'https://t.me/JizzaxPrezidentMaktabi',
                      'Video Editor',
                      '2021 - 2023',
                      '· 2 years experience working on DaVinci Resolve (video editing program).\n· 25 +  videos edited for the school\'s official telegram  channel',
                      stepperColor1,200),
                  customStepper(
                      'https://www.instagram.com/mehnatsevar_rasmiy/?utm_source=ig_web_button_share_sheet&igshid=OTQ5NTI0NzZiOA==',
                      'Coordinator',
                      'July 2023',
                      '· coordinated 31 students in the IT season of the Skills Camp\n· helped to overcome the fear of public speaking\n· taught basics of Flutter and Davinci Resolve',
                      stepperColor2,200)
                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Activities',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customStepper(
                      '',
                      'House President',
                      "",
                      '· President of one of the 4 houses in school (House of Beruniy)\n· Conducted weekly meetings, addressing 40 students\' concerns and providing support.\n· Prepared students for inter-house competitions, fostering teamwork and competitiveness.\n· Organized weekly schedules for sports and leisure activities, ensuring engaging experiences.',
                      stepperColor3,280),
                  customStepper(
                      '',
                      'Sprinter',
                      "May 2017 - Aug 2020",
                      '· Consistently trained for 4 years\n· Personal Best in 100m sprint: 11.62 seconds\n·  Personal Best in 200m sprint: 25.36 seconds\n·  4-time State Champion and 1-time National Champion in the 100m sprint (2017-2020)\n· 2-time State Champion in the 200m sprint    (2019-2020)',
                      stepperColor3,280),
                  customStepper(
                      '',
                      'Computer Gaming',
                      "",
                      '· World of Tanks Blitz\n· Counter-Strike: Global Offensive\n· Dota 2\n· LOTR BFME 2',
                      stepperColor3,150),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

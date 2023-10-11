import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/widgets/common/stepper_dot_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:samandar/utils/colors.dart';

class Container4 extends StatelessWidget {
  const Container4({super.key});

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
      margin: const EdgeInsets.symmetric(vertical: 50),
      color: AppColors.backColor,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Row(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Education',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Container(

                constraints: const BoxConstraints(maxWidth: 450),
                child: AnotherStepper(
                  activeBarColor: Colors.grey.shade300,
                    inActiveBarColor: Colors.grey.shade300,
                    barThickness: .7,
                    verticalGap: 100,
                    stepperList: [
                  StepperData(
                      iconWidget:Icon(Icons.expand_circle_down_outlined,color: AppColors.onprimary,),
                      title: StepperText('Presidential School in Jizzakh',textStyle: GoogleFonts.aBeeZee(
                      color: Colors.black,
                        fontSize: 22,
                      ),),
                      subtitle: StepperText(
                          '2021 - 2023 \n\nThe Presidential School is a specialized public educational institution whose activities are aimed at identifying and educating gifted children to train highly qualified specialists.',textStyle: GoogleFonts.aBeeZee(
                        color: Colors.grey,
                        fontSize: 15,
                      ),)),
                  StepperData(
                      iconWidget:Icon(Icons.expand_circle_down_outlined,color: AppColors.onprimary,),
                      title: StepperText('Tashkent State University of Economics',textStyle: GoogleFonts.aBeeZee(
                      color: Colors.black,
                        fontSize: 22,
                      ),),
                      subtitle: StepperText(
                          '2023 - Present \n\nTashkent State University of Economics is one of the largest higher education institutions in the field of economics in Uzbekistan and Central Asia.',textStyle: GoogleFonts.aBeeZee(
                        color: Colors.grey,
                        fontSize: 15,
                      ),)),
                ], stepperDirection: Axis.vertical),
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
              Container(
                constraints: const BoxConstraints(maxWidth: 450),
                child: AnotherStepper(
                  activeBarColor: Colors.grey.shade300,
                    inActiveBarColor: Colors.grey.shade300,
                    barThickness: .7,
                    verticalGap: 70,
                    stepperList: [
                  StepperData(
                      iconWidget:Icon(Icons.expand_circle_down_outlined,color: AppColors.onprimary,),
                      title: StepperText('Mobile App Developer | Flutter',textStyle: GoogleFonts.aBeeZee(
                      color: Colors.black,
                        fontSize: 22,
                      ),),
                      subtitle: StepperText(
                          '2023 - Present \n\nA mobile app developer uses programming languages and development skills to create, test, and develop applications on mobile devices.',textStyle: GoogleFonts.aBeeZee(
                        color: Colors.grey,
                        fontSize: 15,
                      ),)),
                ], stepperDirection: Axis.vertical),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget MobileContainer4() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50,horizontal: 10),
      color: AppColors.backColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Education',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              AnotherStepper(
                activeBarColor: Colors.grey.shade300,
                  inActiveBarColor: Colors.grey.shade300,
                  barThickness: .7,
                  verticalGap: 70,
                  stepperList: [
                StepperData(
                    iconWidget:Icon(Icons.expand_circle_down_outlined,color: AppColors.onprimary,),

                    title: StepperText('Presidential School in Jizzakh',textStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                      fontSize: 22,
                    ),),
                    subtitle: StepperText(
                        '2021 - 2023 \n\nThe Presidential School is a specialized public educational institution whose activities are aimed at identifying and educating gifted children to train highly qualified specialists.',textStyle: GoogleFonts.aBeeZee(
                      color: Colors.grey,
                      fontSize: 15,
                    ),)),
                StepperData(
                    iconWidget:Icon(Icons.expand_circle_down_outlined,color: AppColors.onprimary,),
                    title: StepperText('Tashkent State University of Economics',textStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                      fontSize: 22,
                    ),),
                    subtitle: StepperText(
                        '2023 - Present \n\nTashkent State University of Economics is one of the largest higher education institutions in the field of economics in Uzbekistan and Central Asia.',textStyle: GoogleFonts.aBeeZee(
                      color: Colors.grey,
                      fontSize: 15,
                    ),)),
              ], stepperDirection: Axis.vertical),
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
              Container(
                constraints: const BoxConstraints(maxWidth: 450),
                child: AnotherStepper(
                  activeBarColor: Colors.grey.shade300,
                    inActiveBarColor: Colors.grey.shade300,
                    barThickness: .7,
                    verticalGap: 70,
                    stepperList: [
                  StepperData(
                      iconWidget:Icon(Icons.expand_circle_down_outlined,color: AppColors.onprimary,),
                      title: StepperText('Mobile App Developer | Flutter',textStyle: GoogleFonts.aBeeZee(
                      color: Colors.black,
                        fontSize: 22,
                      ),),
                      subtitle: StepperText(
                          '2023 - Present \n\nA mobile app developer uses programming languages and development skills to create, test, and develop applications on mobile devices.',textStyle: GoogleFonts.aBeeZee(
                        color: Colors.grey,
                        fontSize: 15,
                      ),)),
                ], stepperDirection: Axis.vertical),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

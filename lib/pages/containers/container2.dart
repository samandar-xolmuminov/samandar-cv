import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:samandar/utils/colors.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
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
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        children: [
          Expanded(child: Image.asset('assets/elbek1.jpg')),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 70, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Biography',
                  style: GoogleFonts.bodoniModa(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  """Talented UI/UX designer with 8+ years of experience, seeking to elevate work at ModelTheme, Inc. As Lead UI/UX Head completed project before dead line. ittis augue, id sollicitudin tristique ut.\n\n\nGain visiblity & authorities with a unique mix of content strategy & designing I seek to understand your customer & the problems they need to solve. Then persusion science and marketng strategy to create kind content that rapidly drives traffic and builds authority. Generating lead magnets, content creation editing and optimization, multi funnel marketing.""",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(onPressed: (){}, icon: Icon(Icons.person,color: AppColors.onprimary,), label:  Text('Elbek Mirzamakhmudov',style: TextStyle(fontSize: 15,color: AppColors.primary),),),
                        TextButton.icon(onPressed: (){}, icon: Icon(Icons.calendar_month,color: AppColors.onprimary,), label:  Text('8 August, 2005',style: TextStyle(fontSize: 15,color: AppColors.primary),),),
                        TextButton.icon(onPressed: (){}, icon: Icon(Icons.call,color: AppColors.onprimary,), label:  Text('(+998) 93 666 99 53',style: TextStyle(fontSize: 15,color: AppColors.primary),),),
                        TextButton.icon(onPressed: (){}, icon: Icon(Icons.location_on_outlined,color: AppColors.onprimary,), label:  Text('Tashkent, Uzbekistan',style: TextStyle(fontSize: 15,color: AppColors.primary),),),
                        TextButton.icon(onPressed: (){}, icon: Icon(Icons.email,color: AppColors.onprimary,), label:  Text('elbekmirzamakhmudov@gmail.com',style: TextStyle(fontSize: 15,color: AppColors.primary),),),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}

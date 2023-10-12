import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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

  Widget DesktopContainer5(){
    return Container();
  }
}

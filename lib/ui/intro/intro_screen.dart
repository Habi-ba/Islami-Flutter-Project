import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/ui/intro/pages_list.dart';
import 'package:islami/utils/colors.dart';

import 'package:islami/utils/fonts.dart';

class IntroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: listPagesViewModel,
      showBackButton: true,
      showNextButton: true,
      back: Text('Back',style: AppFonts.janna16bold,),
      next: Text("Next",style: AppFonts.janna16bold,),
      done: Text("Done", style:AppFonts.janna16bold),
      onDone: () {
        // On Done button pressed
      },

      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: AppColors.Gold,
        color: AppColors.Gray,
        spacing: const EdgeInsets.symmetric(horizontal: 4.0),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
        ),
      ),
    );
  }
}

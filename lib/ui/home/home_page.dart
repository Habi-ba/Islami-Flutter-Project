import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/ui/intro/pages_list.dart';
import 'package:islami/utils/colors.dart';

import 'package:islami/utils/fonts.dart';
import 'package:islami/utils/images.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     //bottomNavigationBar: BottomNavigationBar(items:),
     body: Stack(
       children: [
         Image.asset(AppImages.homePage)
       ],
     )
   );
  }


}

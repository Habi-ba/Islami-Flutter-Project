import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/utils/images.dart';

import '../../utils/fonts.dart';

const String jannaBold = 'JannaLT';
List<PageViewModel> listPagesViewModel = [
  PageViewModel(
    body: "Welcome To Islmi App",
    image: Image.asset(
      'assets/png_images/Group 31.png',
      height: 140,
      width: double.infinity,
    ),
    titleWidget: Image.asset('assets/png_images/Frame 3.png'),
    backgroundImage: 'assets/png_images/ba.png',
    decoration: PageDecoration(
      imageFlex: 1,
      bodyFlex: 4,
      titlePadding: EdgeInsets.only(bottom: 79, top: 70),
      imageAlignment: Alignment.topCenter,
      bodyPadding: EdgeInsets.only(bottom: 130),
      safeArea: 50,
      bodyTextStyle: AppFonts.janna24bold,
    ),
  ),
  PageViewModel(
    titleWidget: Image.asset(AppImages.kabbaImage),
    backgroundImage: 'assets/png_images/ba.png',
    bodyWidget: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Welcome To Islami', style: AppFonts.janna24bold),
        SizedBox(height: 15),
        Text(
          textAlign: TextAlign.center,
          'We Are Very Excited To Have You In Our Community',
          style: AppFonts.janna20bold,
        ),
      ],
    ),
    image: Image.asset(
      'assets/png_images/Group 31.png',
      height: 140,
      width: double.infinity,
    ),

    decoration: PageDecoration(
      imageFlex: 1,
      bodyFlex: 3,
      titlePadding: EdgeInsets.only(bottom: 50, top: 10),
      imageAlignment: Alignment.topCenter,
      bodyPadding: EdgeInsets.only(bottom: 120),
      safeArea: 50,
      bodyTextStyle: AppFonts.janna24bold,
    ),
  ),
  PageViewModel(
    titleWidget: Image.asset(AppImages.Welcome, height: 400),
    backgroundImage: 'assets/png_images/ba.png',
    bodyWidget: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Reading the Quran', style: AppFonts.janna24bold),
        SizedBox(height: 15),
        Text(
          textAlign: TextAlign.center,
          'Read, and your Lord is the Most Generous',
          style: AppFonts.janna20bold,
        ),
      ],
    ),
    image: Image.asset(
      'assets/png_images/Group 31.png',
      height: 140,
      width: double.infinity,
    ),

    decoration: PageDecoration(
      imageFlex: 1,
      bodyFlex: 4,

      titlePadding: EdgeInsets.only(bottom: 50, top: 10),
      imageAlignment: Alignment.topCenter,
      bodyPadding: EdgeInsets.only(bottom: 120),
      safeArea: 50,
      bodyTextStyle: AppFonts.janna24bold,
    ),
  ),
  PageViewModel(
    titleWidget: Image.asset(AppImages.Sebha1, height: 400),
    backgroundImage: 'assets/png_images/ba.png',
    bodyWidget: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Bearish', style: AppFonts.janna24bold),
        SizedBox(height: 15),
        Text(
          textAlign: TextAlign.center,
          'Praise the name of your Lord, the Most High',
          style: AppFonts.janna20bold,
        ),
      ],
    ),
    image: Image.asset(
      'assets/png_images/Group 31.png',
      height: 140,
      width: double.infinity,
    ),

    decoration: PageDecoration(
      imageFlex: 1,
      bodyFlex: 4,

      titlePadding: EdgeInsets.only(bottom: 50, top: 10),
      imageAlignment: Alignment.topCenter,
      bodyPadding: EdgeInsets.only(bottom: 120),
      safeArea: 50,
      bodyTextStyle: AppFonts.janna24bold,
    ),
  ),
  PageViewModel(
    titleWidget: Image.asset(AppImages.radio, height: 350),
    backgroundImage: 'assets/png_images/ba.png',
    bodyWidget: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Holy Quran Radio', style: AppFonts.janna24bold),
        SizedBox(height: 15),
        Text(
          textAlign: TextAlign.center,
          'You can listen to the Holy Quran Radio through the application for free and easily',
          style: AppFonts.janna20bold,
        ),
      ],
    ),
    image: Image.asset(
      'assets/png_images/Group 31.png',
      height: 140,
      width: double.infinity,
    ),

    decoration: PageDecoration(
      imageFlex: 1,
      bodyFlex: 4,

      titlePadding: EdgeInsets.only(bottom: 50, top: 10),
      imageAlignment: Alignment.topCenter,
      bodyPadding: EdgeInsets.only(bottom: 120),
      safeArea: 50,
      footerFlex: 2,
      bodyTextStyle: AppFonts.janna24bold,
    ),
  ),
];

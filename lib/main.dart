import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_page.dart';
import 'package:islami/ui/intro/intro_screen.dart';
import 'package:islami/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        AppRoutes.homeRouteName:(context)=> HomePage(),
        AppRoutes.introRouteName:(context)=>IntroScreen(),
        

      },
    );
  }
}



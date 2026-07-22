import 'package:flutter/material.dart';
import 'package:islami/utils/images.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavigationBar(items:),
      body: Stack(
        children: [
          Image.asset(
            AppImages.homePage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

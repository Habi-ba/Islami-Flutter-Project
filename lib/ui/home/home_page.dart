import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/ui/home/tabs/hadeth/hadeth_screen.dart';
import 'package:islami/ui/home/tabs/quran/quran_screen.dart';
import 'package:islami/ui/home/tabs/radio/radio_screen.dart';
import 'package:islami/ui/home/tabs/sebha/sebha_screen.dart';
import 'package:islami/ui/home/tabs/time/time_screen.dart';
import 'package:islami/utils/colors.dart';
import 'package:islami/utils/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = const [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    TimeScreen(),
  ];
  List<String> backgroundImages = [
    AppImages.quranbg,
    AppImages.hadethbg,
    AppImages.sebhabg,
    AppImages.radiobg,
    AppImages.timebg,
  ];

  int _selectedIndex = 0;

  Widget _buildIcon({
    required String blackIcon,
    required String whiteIcon,
    required int index,
  }) {
    bool isSelected = _selectedIndex == index;
    return Container(
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 20, right: 20),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.DarkBrown : Colors.transparent,
        borderRadius: BorderRadius.circular(66),
      ),
      child: SvgPicture.asset(isSelected ? whiteIcon : blackIcon, height: 22),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          backgroundImages[_selectedIndex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.Gold,
            selectedItemColor: AppColors.White,
            unselectedItemColor: Colors.black,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: _buildIcon(
                  blackIcon: AppImages.quranbookblack,
                  whiteIcon: AppImages.quranSelected,
                  index: 0,
                ),
                label: 'Quran',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  blackIcon: AppImages.blackhadethimage,
                  whiteIcon: AppImages.hadithSelected,
                  index: 1,
                ),
                label: 'Hadith',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  blackIcon: AppImages.blackSebha,
                  whiteIcon: AppImages.sebhaSelected,
                  index: 2,
                ),
                label: 'Sebha',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  blackIcon: AppImages.radioSVG,
                  whiteIcon: AppImages.radioSelected,
                  index: 3,
                ),
                label: 'Radio',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  blackIcon: AppImages.timeblack,
                  whiteIcon: AppImages.timeSelected,
                  index: 4,
                ),
                label: 'Time',
              ),
            ],
          ),
          body: _pages[_selectedIndex],
        ),
      ],
    );
  }
}

//children: [
//Image.asset(
//AppImages.homePage,
//fit: BoxFit.cover,
//width: screenwidth,
//height: screenheight,
//),

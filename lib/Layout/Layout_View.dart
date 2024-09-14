import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/moduls/Hadith_view/Hadithview.dart';
import 'package:islam/moduls/Quran_view/Quranview.dart';
import 'package:islam/moduls/Radio_view/Radioview.dart';
import 'package:islam/moduls/Sebha_view/Sebhaview.dart';
import 'package:islam/moduls/Settings_view/Settingsview.dart';

import '../core/app-theme.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "Homelayout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  late int selectedindex=0;
  List<Widget> screens=[QuranView(),HadithView(),RadioView(),SebhaView(),SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),fit: BoxFit.cover)
        ,),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const  Text(
             "اسلامي",
            ),

        ),
        body: screens[selectedindex],
        bottomNavigationBar:  BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index){
            setState(() {
              selectedindex = index;
            });
            selectedindex=index;
          },
          backgroundColor: AppTheme.primarycolor,
          items:const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/quran.png")),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/Group.png")),
              label: 'Hadith',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/radio_blue.png")),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/sebha_blue.png")),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/settings.jpg")),
              label: 'Settings',
            ),
          ],
        ),

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islam/Layout/Layout_View.dart';
import 'package:islam/core/app-theme.dart';
import 'package:islam/moduls/Quran_view/Quranview.dart';
import 'moduls/Hadith_view/HadithContent.dart';
import 'moduls/Quran_view/Surapage.dart';
import 'moduls/SplashScreen/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Islami App",
      theme:AppTheme.Lighttheme,
      debugShowCheckedModeBanner: false,
      initialRoute:SplashView.routeName ,
    routes: {
      SplashView.routeName: (context) => const SplashView(),
      LayoutView.routeName: (context) => const LayoutView(),
      SuraPage.routeName: (context) => const SuraPage(),
      hadithcontent.routeName: (context) => const hadithcontent(),
    },
    );
  }
}

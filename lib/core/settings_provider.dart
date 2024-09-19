import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLanguage="ar";
  ThemeMode CurrentThemeMode=ThemeMode.dark;

  void changeLanguage(String newLanguage) {
    currentLanguage = newLanguage;
    notifyListeners() ;
  }
  void changeMode(ThemeMode newMode) {
    CurrentThemeMode = newMode;
    notifyListeners() ;
  }
String getHomebackground(){
    return CurrentThemeMode == ThemeMode.dark? "assets/images/bg.png" : "assets/images/main_background.png";
}
String getsplashviewbackground(){
    return CurrentThemeMode == ThemeMode.dark? "assets/images/splash – 1.png" : "assets/images/splashbackground.png";
  }
bool isDark(){
    return CurrentThemeMode == ThemeMode.dark;

}

  String getsebhaheader(){
    return CurrentThemeMode == ThemeMode.dark? "assets/icons/body of seb7a (1).png" : "assets/icons/body of seb7a.png";
  }
  String getsebhabody(){
    return CurrentThemeMode == ThemeMode.dark? "assets/icons/head of seb7a (1).png" : "assets/icons/head of seb7a.png";
  }


}
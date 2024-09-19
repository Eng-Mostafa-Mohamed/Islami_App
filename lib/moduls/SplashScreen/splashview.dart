import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Layout/Layout_View.dart';
import '../../core/settings_provider.dart';

class SplashView extends StatefulWidget {

  static const String routeName = '/splash';
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

 @override
  void initState() {
   Timer(const Duration(seconds: 2), () {
     Navigator.pushReplacementNamed(context, LayoutView.routeName);
   },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Image.asset(
    provider.getsplashviewbackground(),
    fit: BoxFit.cover,);
  }
}
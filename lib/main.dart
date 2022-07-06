import 'package:flutter/material.dart';
import 'package:neew/pages/splashpage.dart';
import 'package:neew/pages/welcomepage.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(goToPage: const WelcomePage(), duration: 3)));
}

void runApp(materialApp) {
}




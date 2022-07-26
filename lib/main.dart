import 'package:flutter/material.dart';
import 'package:neew/pages/splashpage.dart';
import 'package:neew/pages/welcomepage.dart';
import 'package:neew/pages/setting.dart';
import 'package:neew/pages/register.dart';
import 'package:neew/pages/login.dart';
import 'package:neew/pages/homepage.dart';
import 'package:neew/pages/dashboard.dart';
import 'package:neew/pages/notifications.dart';
import 'package:neew/pages/profile.dart';
import 'package:neew/pages/onboarding.dart';
import 'package:neew/pages/privacy.dart';
import 'package:neew/pages/feedback.dart';


void main() {
  runApp(const NeewApp());
}

class NeewApp extends StatelessWidget {
  const NeewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: 'OpenSans'),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(duration: 3, goToPage: const WelcomePage()),
        '/welcomepage': (context) => const WelcomePage(),
        '/homepage': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/setting': (context) => const SettingsPage(),
        '/dashboard': (context) =>  DashboardPage(),
        '/notifications': (context) => NotificationPage(),
        '/onboardingpage': (context) => const OnboardingPage(),
        '/signin': (context) => LoginPage(),
        '/signup': (context) => RegisterPage(),
        '/feedback': (context) => const FeedBackPage(),
        '/privacy': (context) => const PrivacyPage(),
      },
    );
  }
}



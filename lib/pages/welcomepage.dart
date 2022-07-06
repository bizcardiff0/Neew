import 'package:neew/utils/appcolors.dart';
import 'package:neew/widgets/themebutton.dart';
import 'package:neew/pages/bottomnav.dart';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                        'assets/images/main_bg.png',
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                              width: 180,
                              height: 180,
                              color: AppColors.Main_Color,
                              alignment: Alignment.center,
                              child: const Icon(Icons.account_balance_sharp, size: 130,) //app logo
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      const Text('Welcome',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      const SizedBox(height: 40),
                      const Text('Please sign in\n or view onboarding content',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          )
                      ),
                      const SizedBox(height: 40),
                      ThemeButton(
                        label: 'Skip to Home.',
                        highlight: AppColors.Main_Primary,
                        color: AppColors.Main_Color,
                        onClick: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => const  SettingPage()));
                          // Utils.mainAppNav.currentState!.pushNamed('/mainpage');
                        },
                      ),
                      ThemeButton(
                        label: 'View Onboarding',
                        highlight: AppColors.Main_Color,
                        color: AppColors.Main_Primary,
                        onClick: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => const LogInPage()));
                          // // Utils.mainAppNav.currentState!.pushNamed('/onboardingpage');
                        },
                      ),
                      ThemeButton(
                        // icon: Icon(Icon.google),
                          label: "Login with Google",
                          labelColor: AppColors.Main_Color,
                          color: Colors.transparent,
                          highlight: AppColors.Main_Primary.withOpacity(0.5),
                          borderColor: AppColors.Main_Color,
                          borderWidth: 4,
                          onClick: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => const MyHomePage()));
                          }
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:neew/utils/appcolors.dart';
import 'package:neew/widgets/themebutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                //add header info here
              ),
              const SizedBox(height: 10),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(children: const <Widget>[
                                Icon(Icons.thermostat_sharp),
                                Text('Temperature'),
                          ],
                          ),
                          const Text('Value : 36')
                          // const Text('Take an image or photo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(children: const <Widget>[
                            Icon(Icons.sunny),
                            Text('Humidity'),
                          ],
                          ),
                          const Text('Value : 67%')
                          // const Text('Take an image or photo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(children: const <Widget>[
                            Icon(Icons.gradient),
                            Text('Soil moisture'),
                          ],
                          ),
                          const Text('Value : 86%')
                          // const Text('Take an image or photo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(children: const <Widget>[
                            Icon(Icons.light_mode),
                            Text('Light intensity'),
                          ],
                          ),
                          const Text('Value : 50%')
                          // const Text('Take an image or photo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    ThemeButton(
                      // icon: Icon(Icon.google),
                        label: "Action to be taken : No action needed ",
                        labelColor: AppColors.Main_Color,
                        color: Colors.transparent,
                        borderWidth: 4,
                        onClick: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => const RegistrationPage()));
                        }
                    ),
                    ThemeButton(
                      // icon: Icon(Icon.google),
                        label: "Plant Health Status : OK",
                        labelColor: AppColors.Main_Color,
                        color: Colors.transparent,
                        borderWidth: 4,
                        onClick: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => const RegistrationPage()));
                        }
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
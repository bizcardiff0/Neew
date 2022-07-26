import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _currentPage = 0;
  List<OnBoardingContent> _slides = [];
  PageController _pageController = PageController();

  String onBoardHeading1 =
      'Planting is good but the unavailabilities of a gardener or care taker,\naround our home and officies is a call for concern.\n There need to monitor health of plants arises.';

  String onBoardHeading2 =
      'To support them we have decided to use IOT tools to aid in the\nmonitoring of plant health from a mobile device over distances\n';
  String onBoardHeading3 =
      'Taking advantage of technology to face this problem.\nThe available data and alerts ease on what actions are to be taken afterwards!\n ';

  @override
  void initState() {
    _currentPage = 0;
    _slides = [
      Slide(image: 'assets/images/plant.png', heading: onBoardHeading1),
      Slide(image: 'assets/images/monitor.png', heading: onBoardHeading2),
      Slide(image: 'assets/images/take-action.png', heading: onBoardHeading3),
    ];
    _pageController = PageController(initialPage: _currentPage);
    super.initState();
  }

  List<Widget> _buildSlides() {
    return _slides.map(_buildSlide).toList();
  }

  Widget _buildSlide(Slide slide) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.all(35),
            child: Image.asset(
              slide.image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Text(
            slide.heading,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: Colors.grey[700],
            ),
          ),
        ),
        SizedBox(
          height: 150,
        )
      ],
    );
  }

  void _handlingOnPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  Widget _buildPageIndicator() {
    Row row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [],
    );
    for (int i = 0; i < _slides.length; i++) {
      row.children.add(_buildPageIndicatorItem(i));
      if (i != _slides.length - 1)
        row.children.add(
          SizedBox(
            width: 12,
          ),
        );
    }
    return row;
  }

  Widget _buildPageIndicatorItem(int index) {
    return Container(
      width: index == _currentPage ? 8 : 5,
      height: index == _currentPage ? 8 : 5,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index == _currentPage ? Color(0xFF2898D8) : Color(0xFF30AEF6)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: _handlingOnPageChanged,
            physics: BouncingScrollPhysics(),
            children: _buildSlides(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                _buildPageIndicator(),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: SizedBox(
                    width: double.infinity,
                    child: GradientButton(
                      callback: () => {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => Register(),
                        //   ),
                        // ),
                        Navigator.pushReplacementName(context, '/signin');
                      },
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF2898D8),
                          Color(0XFF2C9BDB),
                        ],
                      ),   //replace with gradient color from appcolors widget
                      elevation: 0,
                      increaseWidthBy: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        "LET´S START MONITOR",
                        style: TextStyle(
                          letterSpacing: 4,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class OnBoardingContent {
  String image = '';
  String heading = '';

  OnBoardingContent({required this.image, required this.heading});
}

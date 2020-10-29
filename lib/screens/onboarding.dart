import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapplication/pagemodel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';
import 'package:newsapplication/main.dart';



class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages;
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void _addPages() {
    pages = List<PageModel>();
    pages.add(PageModel(
        'Welcome!',
        '1- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/pic1.png',
        Icons.lightbulb_outline));

    pages.add(PageModel(
        'Weather',
        '2- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/pic2.png',
        Icons.cloud));

    pages.add(PageModel(
        'Economics',
        '3- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/pic3.png',
        Icons.trending_up));

    pages.add(PageModel(
        'Sports',
        '4- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/pic4.png',
        Icons.directions_bike));
  }
  
  @override
  Widget build(BuildContext context) {
    _addPages();
    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index].icons,
                          size: 150,
                          color: Colors.yellowAccent,
                        ),
                        offset: Offset(0, -90),
                      ),
                      Text(
                        pages[index].title,
                        style: TextStyle(
                          color: Colors.brown.shade500,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 18),
                        child: Text(
                          pages[index].describtion,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index) {
              _pageViewNotifier.value = index;
            },
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Transform.translate(
              offset: Offset(0, 160),
              child: _displayPageIndicator(pages.length)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 14, left: 12, right: 12),
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: RaisedButton(
                color: Colors.red.shade800,
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        _updateScreen();
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _displayPageIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  void _updateScreen() async{
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}

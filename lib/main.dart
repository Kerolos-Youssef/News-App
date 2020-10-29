import 'package:flutter/material.dart';
import 'package:newsapplication/screens/home_screen.dart';
import 'screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utilities/App_theme.dart';

SharedPreferences prefs ;
main() async{
  WidgetsFlutterBinding.ensureInitialized();
  bool seen;
  SharedPreferences.getInstance().then((value){
     prefs=value;
     seen=prefs.getBool('seen');
     Widget _screen;
     if(seen == null || seen ==false){
       _screen=OnBoarding();
     }else{
       _screen=HomeScreen();
     }
     runApp(NewsApp(_screen));
  });
}

class NewsApp extends StatelessWidget{
  final Widget _screen;

  NewsApp(this._screen);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.apptheme,
      home: this._screen,
    );
  }

}
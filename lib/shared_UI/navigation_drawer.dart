import 'package:flutter/material.dart';
import 'package:newsapplication/models/nav_menu.dart';
import 'package:newsapplication/screens/headline_news.dart';
import 'package:newsapplication/screens/home_screen.dart';
import 'package:newsapplication/screens/twitter_feed.dart';
import 'package:newsapplication/screens/instgram_feed.dart';
import 'package:newsapplication/screens/facebook_feed.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  List<NavMenuItem> navigationMenu = [
    NavMenuItem('Explore', () => HomeScreen()),
    NavMenuItem('Headline News', () => HeadLineNews()),
    NavMenuItem('Twitter Feeds', ()=>TwitterFeed()),
    NavMenuItem("Instagram Feeds", ()=>InstagramFeed()),
    NavMenuItem("Facebook Feeds", ()=>FacebookFeeds()),
  ];


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 8),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  navigationMenu[position].title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade400,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return navigationMenu[position].destinition();
                  }));
                },
              ),
            );
          },
          itemCount: navigationMenu.length,
        ),
      ),
    );
  }
}

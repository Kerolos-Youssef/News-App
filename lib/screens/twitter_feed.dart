import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapplication/shared_UI/navigation_drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Twitter Feeds'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
        drawer: NavigationDrawer(),
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 9),
              child: Card(
                elevation: 4,
                child: Column(
                  children: <Widget>[
                    _cardheader(),
                    _cardbody(),
                    _drawLine(),
                    _cardfooter(),
                  ],
                ),
              ),
            );
          },
          itemCount: 20,
        ));
  }

  Widget _cardheader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                ExactAssetImage('assets/images/avataricon2_pic7.png'),
            radius: 30,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Christina Meyers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '@ch_meyers',
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Mon, 23 July 2020 . 14.30',
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cardbody() {
    return Padding(
      padding: const EdgeInsets.only(right: 14, left: 14, bottom: 10),
      child: Text(
        'We also talk about the future of work as the robots advance, and we ask whether a retro phone',
        style: TextStyle(
          fontSize: 16,
          height: 1.5,
          color: Colors.grey.shade900,
        ),
      ),
    );
  }

  Widget _cardfooter() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.repeat,
                    color: Colors.orange,
                    size: 28,
                  ),
                  onPressed: () {}),
              Text(
                '23',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    'SHARE',
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  )),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    'OPEN',
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }

 Widget _drawLine() {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 12),
      height: 1,
      color: Colors.grey.shade400,
    );
 }
}

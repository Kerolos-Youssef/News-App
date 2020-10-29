import 'package:flutter/material.dart';
import 'package:newsapplication/shared_UI/navigation_drawer.dart';

class FacebookFeeds extends StatefulWidget {
  @override
  _FacebookFeedsState createState() => _FacebookFeedsState();
}

class _FacebookFeedsState extends State<FacebookFeeds> {

  TextStyle _hashTagStyle = TextStyle(color: Colors.orange);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Facebook Feeds'),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _drawHeader(),
                    _drawTitle(),
                    _drawHashtags(),
                    _drawBody(),
                    _drawFooter(),
                  ],
                ),
              ),
            );
          },
          itemCount: 20,
        ));
  }


  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
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
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.grey.shade400,
            ),
            Transform.translate(
              offset: Offset(-10, 0),
              child: Text(
                '23',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade500,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9, left: 14, right: 14),
      child: Text(
        'We also talk about the future of work as the robots',
        style: TextStyle(
          color: Colors.grey.shade900,
        ),
      ),
    );
  }

  Widget _drawHashtags() {
    return Wrap(
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            '#advance',
            style: _hashTagStyle,
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            '#retro',
            style: _hashTagStyle,
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            '#instagram',
            style: _hashTagStyle,
          ),
        ),
      ],
    );
  }

  Widget _drawBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image(
        image: ExactAssetImage('assets/images/placeholder4_pic10.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _drawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            '10 COMMENTS',
            style: _hashTagStyle,
          ),
        ),
        Row(
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                'SHARE',
                style: _hashTagStyle,
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'OPEN',
                style: _hashTagStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

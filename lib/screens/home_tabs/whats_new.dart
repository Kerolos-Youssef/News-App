import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(),
          _drawTopstories(),
        ],
      ),
    );
  }

  Widget _drawHeader() {
    TextStyle _headeritle = TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w800,
    );
    TextStyle _headerdescribtion = TextStyle(
      color: Colors.white,
      fontSize: 16,
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/placeholder_pic5.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'This Area to show a photo',
                style: _headeritle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'this area to describe or add a subtitle to the photo this area to describe or add a subtitle to the photo this area to describe or add a subtitle to the photo this area to describe or add a subtitle to the photo',
                style: _headerdescribtion,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTopstories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 14),
            child: _drawSectionTitle('Top Stories'),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 6, bottom: 8),
                  child: _drawSectionTitle('Recent Updates'),
                ),
                _drawRecentUpdatesCard('Sports', Colors.deepOrange),
                _drawRecentUpdatesCard('Life Style', Colors.amber),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            child: Image(
              image: ExactAssetImage('assets/images/card_pic6.png'),
              fit: BoxFit.cover,
            ),
            height: 110,
            width: 110,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  'The World Global Warming Annula Summit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Michael Adams'),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Text('23 min'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawDivider() {
    return Container(
      color: Colors.grey.shade100,
      height: 2,
      width: double.infinity,
    );
  }

  Widget _drawSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.grey.shade600,
        fontWeight: FontWeight.w500,
        fontSize: 16.5,
      ),
    );
  }

  Widget _drawRecentUpdatesCard(String text, Color color) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: ExactAssetImage('assets/images/recentupdates_pic6.png'),
              fit: BoxFit.cover,
            )),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 14, bottom: 8),
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 4, bottom: 4),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 8),
            child: Text(
              'These Are Random Words Random Words',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.0, top: 18, bottom: 17),
            child: Row(
              children: <Widget>[
                Icon(Icons.timer,color: Colors.grey,),
                Text('7 min',style: TextStyle(color: Colors.grey,),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

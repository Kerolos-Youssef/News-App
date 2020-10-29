import 'dart:math';
import 'package:flutter/material.dart';

class Favorited extends StatefulWidget {
  @override
  _FavoritedState createState() => _FavoritedState();
}

class _FavoritedState extends State<Favorited> {

  List<Color> colorList = [
    Colors.amber,
    Colors.cyan,
    Colors.deepOrange,
    Colors.indigo,
    Colors.brown,
    Colors.red,
    Colors.deepOrangeAccent,
    Colors.greenAccent,
  ];
  Random random = Random();

  Color _getRandomColor() {
    return colorList[random.nextInt(colorList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(14),
            child: Column(
              children: <Widget>[
                _authorRow(),
                SizedBox(height: 16,),
                _newsItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/avataricon_pic9.png'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              width: 45,
              height: 45,
              margin: EdgeInsets.only(right: 12),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Michael Adams',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '15 min .',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'LifeStyle',
                      style: TextStyle(
                        color: _getRandomColor(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          onPressed: () {},
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/placeholder3_pic8.png'),
              fit: BoxFit.cover,
            ),
          ),
          width: 120,
          height: 120,
          margin: EdgeInsets.only(right: 12),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                'Tech Tent: Old phone and safe social',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'We also talk about the future of work as the robots advance, and we ask whether a retro phone',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

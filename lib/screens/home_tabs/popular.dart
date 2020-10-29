import 'package:flutter/material.dart';
class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,position){
      return Card(
        child: _drawSingleRow(),
      );
    },
      itemCount: 20,
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
}

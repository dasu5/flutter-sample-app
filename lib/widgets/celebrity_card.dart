import 'package:flutter/material.dart';

class CelebrityCard extends StatelessWidget {
  final String name;
  final String tagline;
  final String imageUrl;

  const CelebrityCard({Key key, this.name, this.tagline, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      color: Colors.cyan[700],
      child: Column(
        children: [
          Image(
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
          SizedBox(height: 10.0),
          Text(
            name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2.0),
          Text(tagline),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 30.0, bottom: 13.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF18D191)),
          child: Icon(
            Icons.bookmark,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 50.0, top: 70.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFFFC6A7F)),
          child: Icon(
            Icons.local_airport,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, top: 70.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFFFFCE56)),
          child: Icon(
            Icons.local_taxi,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 110.0, top: 70.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF45E0EC)),
          child: Icon(
            Icons.local_offer,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

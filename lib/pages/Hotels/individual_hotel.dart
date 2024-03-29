import 'package:flutter/material.dart';
import 'package:travelapp/pages/Hotels/hotelScreenBottomPart.dart';
import 'package:travelapp/pages/Hotels/hotelScreenTopPart.dart';
import 'package:travelapp/utils/utils.dart';

class IndividualHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xDD696D77), Color(0xFF292C36)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: screenAwareSize(20.0, context),
            ),
            onPressed: () {},
          ),
          title: Text(
            "Adidas",
            style: TextStyle(
                color: Colors.white,
                fontSize: screenAwareSize(18.0, context),
                fontFamily: "Montserrat-Bold"),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                size: screenAwareSize(20.0, context),
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[HotelScreenTopPart(), HomeScreenBottomPart()],
        ),
      ),
    );
  }
}

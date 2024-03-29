import 'package:flutter/material.dart';
import 'package:travelapp/pages/Hotels/hotelData.dart';
import 'package:travelapp/utils/utils.dart';

class HomeScreenBottomPart extends StatefulWidget {
  @override
  _HomeScreenBottomPartState createState() => _HomeScreenBottomPartState();
}

class _HomeScreenBottomPartState extends State<HomeScreenBottomPart> {
  bool isExpanded = false;
  int currentColorIndex = 0;
  int currentSizedIndex = 0;
  int _counter = 0;

  void _increasingNumber() {
    setState(() {
      _counter++;
    });
  }

  void _decreasingNumber() {
    setState(() {
      _counter--;
    });
  }

  void _expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  List<Widget> colorSelector() {
    List<Widget> colorItemList = new List();

    for (var i = 0; i < colors.length; i++) {
      colorItemList
          .add(colorItem(colors[i], i == currentColorIndex, context, () {
        setState(() {
          currentColorIndex = i;
        });
      }));
    }

    return colorItemList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
            child: Text(
              "Product Details",
              style: TextStyle(
                  color: Color(0xFF949598),
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-SemiBold"),
            ),
          ),
          SizedBox(
            height: screenAwareSize(8.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenAwareSize(26.0, context),
                right: screenAwareSize(18.0, context)),
            child: AnimatedCrossFade(
              firstChild: Text(
                desc,
                maxLines: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAwareSize(16.0, context),
                    fontFamily: "Montserrat-Medium"),
              ),
              secondChild: Text(
                desc,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAwareSize(12.0, context),
                    fontFamily: "Montserrat-Medium"),
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: kThemeAnimationDuration,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenAwareSize(26.0, context),
                right: screenAwareSize(18.0, context)),
            child: GestureDetector(
                onTap: _expand,
                child: Text(
                  isExpanded ? "less" : "more...",
                  style: TextStyle(
                      color: Color(0xFFFB382F), fontWeight: FontWeight.w700),
                )),
          ),
          SizedBox(
            height: screenAwareSize(12.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenAwareSize(15.0, context),
                right: screenAwareSize(75.0, context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Size",
                  style: TextStyle(
                      color: Color(0xFF949598),
                      fontSize: screenAwareSize(10.0, context),
                      fontFamily: "Montserrat-SemiBold"),
                ),
                Text(
                  "Quantity",
                  style: TextStyle(
                      color: Color(0xFF949598),
                      fontSize: screenAwareSize(10.0, context),
                      fontFamily: "Montserrat-SemiBold"),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenAwareSize(20.0, context),
                right: screenAwareSize(10.0, context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: screenAwareSize(38.0, context),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: sizeNumlist.map((item) {
                      var index = sizeNumlist.indexOf(item);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSizedIndex = index;
                          });
                        },
                        child: sizedItem(
                            item, index == currentSizedIndex, context),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: screenAwareSize(100.0, context),
                    height: screenAwareSize(30.0, context),
                    decoration: BoxDecoration(
                        color: Color(0xFF525663),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _decreasingNumber,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: "Montserrat-Bold"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            height: double.infinity,
                            child: Center(
                              child: Text(
                                _counter.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat-Bold"),
                              ),
                            ),
                          ),
                        ),
                        divider(),
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _increasingNumber,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: "Montserrat-Bold"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
            child: Text(
              "Select Color",
              style: TextStyle(
                  color: Color(0xFF949598),
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-Semibol"),
            ),
          ),
          SizedBox(
            height: screenAwareSize(8.0, context),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: screenAwareSize(20.0, context)),
            height: screenAwareSize(34.0, context),
            child: Row(
              children: colorSelector(),
            ),
          ),
          SizedBox(
            height: screenAwareSize(8.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(20.0, context)),
            child: Text(
              "Price",
              style: TextStyle(
                  color: Color(0xFF949598), fontFamily: "Montserrat-SemiBold"),
            ),
          ),
          Container(
            width: double.infinity,
            height: screenAwareSize(120.0, context),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: screenAwareSize(22.0, context)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenAwareSize(18.0, context)),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "\$",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenAwareSize(26.0, context),
                                  fontFamily: "Montserrat-Medium"),
                            ),
                            SizedBox(
                              width: screenAwareSize(2.0, context),
                            ),
                            Text(
                              "80",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenAwareSize(35.0, context),
                                  fontFamily: "Montserrat-Medium"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenAwareSize(10.0, context),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: MaterialButton(
                          color: Color(0xFFFB382F),
                          padding: EdgeInsets.symmetric(
                            vertical: screenAwareSize(14.0, context),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: screenAwareSize(35.0, context)),
                              child: Text(
                                "Buy",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenAwareSize(15.0, context)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: -40.0,
                  bottom: -45.0,
                  child: Image.asset(
                    "assets/images/cart.png",
                    width: screenAwareSize(190, context),
                    height: screenAwareSize(155.0, context),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget sizedItem(String size, bool isSelected, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: Container(
      width: screenAwareSize(30.0, context),
      height: screenAwareSize(30.0, context),
      decoration: BoxDecoration(
          color: isSelected ? Color(0xFFFC3930) : Color(0xFF525663),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                color: isSelected ? Colors.black.withOpacity(.5) : Colors.black,
                offset: Offset(0.0, 10.0),
                blurRadius: 10.0)
          ]),
      child: Center(
        child: Text(size,
            style:
                TextStyle(color: Colors.white, fontFamily: "Montserrat-Bold")),
      ),
    ),
  );
}

Widget colorItem(
    Color color, bool isSelected, BuildContext context, VoidCallback _ontap) {
  return GestureDetector(
    onTap: _ontap,
    child: Padding(
      padding: EdgeInsets.only(left: screenAwareSize(10.0, context)),
      child: Container(
        width: screenAwareSize(30.0, context),
        height: screenAwareSize(30.0, context),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0))
                  ]
                : []),
        child: ClipPath(
          clipper: MClipper(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: color,
          ),
        ),
      ),
    ),
  );
}

class MClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

Widget divider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
    child: Container(
      width: 0.8,
      color: Colors.black,
    ),
  );
}

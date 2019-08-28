import 'package:flutter/material.dart';
import 'package:travelapp/pages/Hotelss/hotels_data.dart';
import 'package:travelapp/pages/Hotelss/room_data.dart';
import 'package:travelapp/widgets/icon_badge.dart';

class HotelDetails extends StatefulWidget {
  @override
  _HotelDetailsState createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  bool _isChecked = false;
  var _availableRooms = ['1', '2', '3', '4'];
  var _currentItemSelected = "1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              primary: false,
              itemCount: places == null ? 0 : places.length,
              itemBuilder: (BuildContext context, int index) {
                Map place = places[index];

                return Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "${place["img"]}",
                      height: 250,
                      width: MediaQuery.of(context).size.width - 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${places[0]["name"]}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${places[0]["location"]}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.blueGrey[300],
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${places[0]["price"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${places[0]["details"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  "Available Rooms",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: ListView.builder(
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: rooms == null ? 0 : rooms.length,
                    itemBuilder: (BuildContext context, int index) {
                      Map room = rooms[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: InkWell(
                          child: Container(
                            height: 70,
//                    color: Colors.red,
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    "${room["img"]}",
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  height: 80,
                                  width:
                                      MediaQuery.of(context).size.width - 130,
                                  child: ListView(
                                    primary: false,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${room["name"]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${room["price"]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          maxLines: 1,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0, left: 5.0),
                                          child: Row(
                                            children: <Widget>[
                                              DropdownButton<String>(
                                                // Map function gets the value as a string in a iteration for each list
                                                items: _availableRooms.map(
                                                    (String
                                                        dropDownStringItem) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: dropDownStringItem,
                                                    child: Text(
                                                      dropDownStringItem,
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF11b719)),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (String
                                                    selectedTotalRooms) {
                                                  _onSelectingTotalRoom(
                                                      selectedTotalRooms);
                                                },
                                                value: _currentItemSelected,
                                                isExpanded: false,
                                                hint: Text(
                                                  'Choose Number of Rooms',
                                                  style: TextStyle(
                                                      color: Color(0xFF11b719)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: CheckboxListTile(
                                            value: _isChecked,
                                            onChanged: (val) {
                                              setState(() {
                                                _isChecked = val;
                                              });
                                            }),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.airplanemode_active,
      //   ),
      //   onPressed: () {},
      // ),

//      bottomNavigationBar: Container(
//        height: 50,
//        child: RaisedButton(
//          elevation: 15,
//          color: Theme.of(context).primaryColor,
//          child: Text(
//            "See Availability",
//            style: TextStyle(
//              color: Theme.of(context).accentColor,
//            ),
//          ),
//          onPressed: (){},
//        ),
//      ),
    );
  }

  void _onSelectingTotalRoom(String selectedTotalRooms) {
    setState(() {
      this._currentItemSelected = selectedTotalRooms;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:travelapp/pages/Home/bottomNavigationBar.dart';
import 'package:travelapp/pages/Hotelss/allHotels.dart';
// import 'package:travelapp/pages/Hotelss/allHotels.dart';
// import 'package:travelapp/pages/Hotelss/allHotels.dart';
import 'package:travelapp/utils/drawer.dart';
// import 'package:travelapp/pages/Hotelss/allHotels.dart';
// import 'package:travelapp/pages/Hotels/individual_hotel.dart';
// import 'package:travelapp/pages/Hotelss/allHotels.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xFF18D191)),
      ),
      drawer: Drawers(),

      body: MainContent(),
      // body: AllHotels(),
      // body: IndividualHotel(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Explore Nepal",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xFFFD7384)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.drive_eta,
                              color: Colors.white,
                            ),
                            Text(
                              "Vehicles",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 2.5, right: 2.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFF2BD093),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.local_taxi,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Taxis",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 2.5, right: 2.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFC7B4D),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.local_hotel,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Hotels",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 2.5, bottom: 2.5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF53CEDB),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        Icons.flight,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Flights",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 2.5, top: 2.5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0XFFF1B069),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        Icons.bookmark,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Packages",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Popular Hotels",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    // Expanded(
                    // RaisedButton(
                    //   onPressed: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => AllHotels()));
                    //   },
                    Expanded(
                      child: GestureDetector(
                        child: Text(
                          "View All",
                          style: TextStyle(color: Color(0xFF2BD093)),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllHotels()));
                        },
                      ),
                    ),
                    // child: Text(
                    //   "View All",
                    //   style: TextStyle(color: Color(0xFF2BD093)),
                    //   textAlign: TextAlign.end,
                    // ),
                    // onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => AllHotels())),
                    // ),
                    // )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://q-ak.bstatic.com/images/hotel/max1024x768/192/192541636.jpg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Hyatt Hotel",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.rebecca-recommends.com/wp-content/uploads/2018/07/Dwarikas-kathmandu-banner.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Dwarika Hotel",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://goreviews.goibibo.com/t_ug/radisson-hotel-kathmandu-kathmandu-nirmal-singh-97148750796.jpg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Radisson Hotel",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Appartments",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "View All",
                        style: TextStyle(color: Color(0xFF2BD093)),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://www.gharjagganepal.com/wp-content/uploads/WPL/3438/img_IMG_9742.JPG",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Namaste Appartment",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.gharjagganepal.com/wp-content/uploads/WPL/3105/img_viber-image.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Stupa Colony",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://lh5.googleusercontent.com/p/AF1QipNNVXynwdnkj2bcoU8qFJoyLW52xjdBCaBG-_Q7=w260-h175-n-k-no",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Ananya Appartment",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Popular Lodges",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "View All",
                        style: TextStyle(color: Color(0xFF2BD093)),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "http://www.tourismkathmandu.com/images/logos/shangrila-guest_logo.jpg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Shangrila Lodge",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "http://www.tourismkathmandu.com/images/logos/dolphin-gh-logo.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Dolphin Lodge",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "http://www.tourismkathmandu.com/images/logos/souvenir-gh-logo.jpg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Souvenir Lodge",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Popular Resorts",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "View All",
                        style: TextStyle(color: Color(0xFF2BD093)),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://www.imnepal.com/wp-content/uploads/2018/05/Fulbari-Resort-and-spa-kathmandu-nepal.jpg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Fulbari Resort",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/nepal/Dwarika%27s-Resort-p.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Dwarika Resort",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://www.rupakotresort.com/images/slideshow/ClFou-slide1.jpg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Rupakot Resort",
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// class AllHotels extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0),
//             child: Container(
//               child: Column(
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       Text(
//                         "Explore Nepal",
//                         style: TextStyle(
//                           fontSize: 30.0,
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                           child: Padding(
//                         padding: const EdgeInsets.only(right: 5.0),
//                         child: Container(
//                           height: 100.0,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5.0),
//                               color: Color(0xFFFD7384)),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Icon(
//                                 Icons.drive_eta,
//                                 color: Colors.white,
//                               ),
//                               Text(
//                                 "Vehicles",
//                                 style: TextStyle(color: Colors.white),
//                               )
//                             ],
//                           ),
//                         ),
//                       )),
//                       Expanded(
//                         child: Container(
//                           height: 100.0,
//                           child: Column(
//                             children: <Widget>[
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       bottom: 2.5, right: 2.5),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         color: Color(0xFF2BD093),
//                                         borderRadius:
//                                             BorderRadius.circular(5.0)),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: <Widget>[
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 8.0),
//                                           child: Icon(
//                                             Icons.local_taxi,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         Text(
//                                           "Taxis",
//                                           style: TextStyle(color: Colors.white),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       top: 2.5, right: 2.5),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         color: Color(0xFFFC7B4D),
//                                         borderRadius:
//                                             BorderRadius.circular(5.0)),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: <Widget>[
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 8.0),
//                                           child: Icon(
//                                             Icons.local_hotel,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         Text(
//                                           "Hotels",
//                                           style: TextStyle(color: Colors.white),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                           child: Container(
//                         height: 100.0,
//                         child: Column(
//                           children: <Widget>[
//                             Expanded(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(
//                                     left: 2.5, bottom: 2.5),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Color(0xFF53CEDB),
//                                       borderRadius: BorderRadius.circular(5.0)),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: <Widget>[
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(right: 8.0),
//                                         child: Icon(
//                                           Icons.flight,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       Text(
//                                         "Flights",
//                                         style: TextStyle(color: Colors.white),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 2.5, top: 2.5),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Color(0XFFF1B069),
//                                       borderRadius: BorderRadius.circular(5.0)),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: <Widget>[
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(right: 8.0),
//                                         child: Icon(
//                                           Icons.bookmark,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       Text(
//                                         "Packages",
//                                         style: TextStyle(color: Colors.white),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       )),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 15.0,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Text(
//                           "Popular Hotels",
//                           style: TextStyle(fontSize: 20.0),
//                         ),
//                       ),
//                       // Expanded(
//                       // RaisedButton(
//                       //   onPressed: () {
//                       //     Navigator.push(
//                       //         context,
//                       //         MaterialPageRoute(
//                       //             builder: (context) => AllHotels()));
//                       //   },
//                       Expanded(
//                         child: Text(
//                           "View All",
//                           style: TextStyle(color: Color(0xFF2BD093)),
//                           textAlign: TextAlign.end,
//                         ),
//                       ),
//                       // child: Text(
//                       //   "View All",
//                       //   style: TextStyle(color: Color(0xFF2BD093)),
//                       //   textAlign: TextAlign.end,
//                       // ),
//                       // onTap: () => Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //         builder: (context) => AllHotels())),
//                       // ),
//                       // )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         "https://q-ak.bstatic.com/images/hotel/max1024x768/192/192541636.jpg",
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Hyatt Hotel",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                           "https://www.rebecca-recommends.com/wp-content/uploads/2018/07/Dwarikas-kathmandu-banner.jpg"),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Dwarika Hotel",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         "https://goreviews.goibibo.com/t_ug/radisson-hotel-kathmandu-kathmandu-nirmal-singh-97148750796.jpg",
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Radisson Hotel",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 15.0,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Text(
//                           "Popular Vehicles",
//                           style: TextStyle(fontSize: 20.0),
//                         ),
//                       ),
//                       Expanded(
//                         child: Text(
//                           "View All",
//                           style: TextStyle(color: Color(0xFF2BD093)),
//                           textAlign: TextAlign.end,
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         "http://autolife.com.np/wp-content/uploads/2014/09/86ad88aa3acf68a0be55f0db6429efa9.jpg",
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Hummer",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                           "https://image.iol.co.za/image/1/process/620x349?source=https://inm-baobab-prod-eu-west-1.s3.amazonaws.com/public/inm/media/2017/11/10/iol/546/IOL-mot-pic-nov10-Land-Cruiser--3.jpg&operation=CROP&offset=0x1113&resize=2242x1263"),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Toyota Prado",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         "https://imgd.aeplcdn.com/1280x720/ec/79/BB/14408/img/m/Mahindra-Scorpio-Front-view-31495_ol.jpg?t=105341173&t=105341173",
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Scorpio",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 15.0,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Text(
//                           "Popular Packages",
//                           style: TextStyle(fontSize: 20.0),
//                         ),
//                       ),
//                       Expanded(
//                         child: Text(
//                           "View All",
//                           style: TextStyle(color: Color(0xFF2BD093)),
//                           textAlign: TextAlign.end,
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         "https://i.ytimg.com/vi/6kmFiiLghDA/maxresdefault.jpg",
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Muktinath",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                           "https://www.sunriseadventuretrek.com/wp-content/uploads/2018/01/kAG-bENI-jOMSOM-1024x690.jpg"),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Mustang",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: 150.0,
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         "https://217354-660080-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2017/12/rara-lake-1170x540.jpg",
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               Text(
//                                 "Rara",
//                                 style: TextStyle(fontSize: 16.0),
//                                 textAlign: TextAlign.center,
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

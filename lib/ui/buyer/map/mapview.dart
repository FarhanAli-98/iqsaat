import 'dart:async';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iqsaat/models/place.dart';
import 'package:iqsaat/ui/Seller/profile/shop_profile.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/utils.dart';

class Mapview extends StatefulWidget {
  @override
  _MapviewState createState() => _MapviewState();
}

class _MapviewState extends State<Mapview> {
  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
  TextEditingController _searchController = TextEditingController();
  final Geolocator _geolocator = Geolocator();
  final startAddressController = TextEditingController();
  Position currentPosition;
  LatLng initialLocation = LatLng(0, 0);

  var lat, long;
  String googleAPiKey = PLACES_API_KEY;
  String selectedName = '';
  Set<Marker> _markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  List<Place> places = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String placeDistance = null;
  final List<LatLng> pointList = <LatLng>[];

  List<Place> _displayResults = [];
  double totalDistance = 0.0;
  GoogleMapController _controller;
  String _mapStyle;
  var height;
  var width;
  bool shopView = false;
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    // _searchController.addListener(_onSearchChanged);

    //bounceShowDialog(context);
  }

  // Timer _throttle;
  // _onSearchChanged() {
  //   if (_throttle?.isActive ?? false) _throttle.cancel();
  //   _throttle = Timer(const Duration(milliseconds: 500), () {
  //     getLocationResult(_searchController.text);
  //   });
  // }

  // getLocationResult(String input) async {
  //   if (input.isEmpty) {
  //     return;
  //   } else {
  //     String baseURL =
  //         'https://maps.googleapis.com/maps/api/place/autocomplete/json';
  //     String type = '(regions)'; //Set Country Area Voice
  //     String request = '$baseURL?input=$input&key=$PLACES_API_KEY&type=$type';
  //     Response response = await Dio().get(request);
  //     final predictions = response.data['predictions'];

  //     for (var i = 0; i < predictions.length; i++) {
  //       String name = predictions[i]['description'];
  //       String placeId = predictions[i]['place_id'];
  //       _displayResults.add(Place(name: name, id: placeId));
  //     }
  //     places = _displayResults;
  //     setState(() {});
  //   }
  // }
  _createPolylines(LatLng start, LatLng destination) async {
   print(start.latitude);print(start.longitude);
    polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleAPiKey, // Google Maps API Key
      PointLatLng(start.latitude, start.longitude),
      PointLatLng(destination.latitude, destination.longitude),
      travelMode: TravelMode.driving,
    );
    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      consumeTapEvents: true,
      color: Colors.blue[600],
      points: pointList,
      width: 5,
    );
    setState(() {
  polylines[id] = polyline;

    });
  
    if (pointList.isNotEmpty) {
      showMessage("Distance dectacted");
      pointList.forEach((point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        print(point.latitude);print(point.longitude);
      });
    } else {
      showMessage("Distance rejacted");
    }
    // setDistence();
    // setState(() {});
  }

  double _coordinateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  setDistence() {
    for (int i = 0; i < polylineCoordinates.length - 1; i++) {
      totalDistance += _coordinateDistance(
        polylineCoordinates[i].latitude,
        polylineCoordinates[i].longitude,
        polylineCoordinates[i + 1].latitude,
        polylineCoordinates[i + 1].longitude,
      );
    }

// Storing the calculated total distance of the route
    setState(() {
      placeDistance = totalDistance.toStringAsFixed(2);

      print('DISTANCE: $placeDistance km');
      int speed = 30;
      //  estimatetime = int.parse(_placeDistance) / speed;
    });
  }

  buildShopView() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: width,
        height: 170,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (BuildContext context, i) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(bottom: 30, right: 10, left: 10),
                height: 143,
                width: 400,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 16.0),
                          child: Image.asset('assets/appIcons/imageVector.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Afzal Electronics",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: AppColors.greyLocationIconColor,
                                  ),
                                  Text(
                                    'DISTANCE:$placeDistance km',
                                    style: TextStyle(
                                        color: AppColors.greyLocationIconColor),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  itemSize: 18,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 24.0, left: 26, right: 21),
                      child: Container(
                        //color: Colors.green,
                        width: double.infinity,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(
                              'assets/appIcons/likeVector.png',
                            ),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              color: AppColors.greenColor,
                              child: Text(
                                'Start Route',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                               RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {
                                AppRoutes.push(context, ShopProfile());
                              },
                              color: AppColors.greenColor,
                              child: Text(
                                'View Profile',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/appIcons/chatVector.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  setShopLocations() async {
    _markers.add(Marker(
        onTap: () {
          setState(() {
            _createPolylines(LatLng(31.44258366444366, 74.27680389899342),
                LatLng(31.44258366444366, 74.27680389899342));

            shopView = !shopView;
          });
        },
        markerId: MarkerId("Afzal Electronics"),
        position: LatLng(31.44258366444366, 74.27680389899342),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: "Afzal Electronics")));
    _markers.add(Marker(
        onTap: () {
          // setState(() {
          //   shopView = !shopView;
          //   _createPolylines(
          //       currentPosition, LatLng(31.463296261528672, 74.30509337015778));
          // });
        },
        markerId: MarkerId("Electronic Mart"),
        position: LatLng(31.463296261528672, 74.30509337015778),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: "Electronic Mart")));
    _markers.add(Marker(
        onTap: () {
          // setState(() {
          //   _createPolylines(
          //       currentPosition, LatLng(31.467654444463268, 74.30709509528805));

          //   shopView = !shopView;
          // });
        },
        markerId: MarkerId("Akbar Electronics"),
        position: LatLng(31.467654444463268, 74.30709509528805),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: "Akbar Electronics")));
  }

  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        pointList.add(LatLng(position.latitude, position.longitude));

        // Store the position in the variable
        currentPosition = position;
        _markers.add(Marker(
            onTap: () {
              setState(() {
                shopView = !shopView;
              });
            },
            markerId: MarkerId("id"),
            position: LatLng(position.latitude, position.longitude),
            icon: BitmapDescriptor.defaultMarker,
            infoWindow: InfoWindow(title: "My Location")));
        setShopLocations();
        CameraUpdate camera = CameraUpdate.newLatLngZoom(
            LatLng(position.latitude, position.longitude), 16);
        _controller.animateCamera(camera).catchError((e) {
          print("Error " + e.toString());
        });
      });
    }).catchError((e) {
      print(e);
    });
  }

// For storing the current position
  Widget buildMap() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
        markers: _markers,
        polylines: Set<Polyline>.of(polylines.values),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
          _controller.setMapStyle(_mapStyle);
          _getCurrentLocation();
        },
        //   onCameraMove: null,
        compassEnabled: false,
        initialCameraPosition:
            CameraPosition(target: initialLocation, zoom: 20),
      ),
    );
  }

  _buildIamHereSearch() {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 5, left: 10, top: 40),
      padding: EdgeInsets.only(right: 15, left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: TextField(
          // onChanged: (value){
          //   findplace(value);
          //             },
          controller: _searchController,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            hintText: 'Search nearby shop',
            //contentPadding: EdgeInsets.only(left: 10),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  //   isIamHereIsRight = false;
                });
              },
              icon: Icon(
                Icons.search,
                color: Color(0xffAAAAAA),
              ),
            ),
            prefixIcon: Container(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                backgroundColor: AppColors.primarycolor,
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            buildMap(),
            _buildIamHereSearch(),
            shopView ? buildShopView() : Container(),
          ],
        ),
      ),
    );
  }
}

// Future bounceShowDialog(BuildContext context) {
//   return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return new AlertDialog(
//             backgroundColor: Colors.grey.withOpacity(0.5),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(20.0))),
//             content: new Container(
//                 height: MediaQuery.of(context).size.height * 0.35,
//                 width: MediaQuery.of(context).size.width * 0.9,
//                 child: Column(
//                   children: [
//                     Container(
//                       // height: 100,
//                       // width: 130,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             height: 70,
//                             width: 70,
//                             child: Image.asset(
//                               'assets/images/mapIcon.jpeg',
//                             ),
//                           ),
//                           Container(
//                             child: Text(
//                               'Set Location Perameters',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                         margin: EdgeInsets.only(top: 15),
//                         height: MediaQuery.of(context).size.height * 0.06,
//                         width: MediaQuery.of(context).size.width * .85,
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(13),
//                           ),
//                           border: Border.all(color: Colors.grey, width: 0.95),
//                         ),
//                         child: TextFormField(
//                           decoration: new InputDecoration(
//                               contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 4),
//                               hintText: "Set Area",
//                               fillColor: Colors.white,
//                               border: InputBorder.none),
//                         )),
//                     Container(
//                         margin: EdgeInsets.only(top: 15),
//                         height: MediaQuery.of(context).size.height * 0.06,
//                         width: MediaQuery.of(context).size.width * .85,
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(13),
//                           ),
//                           border: Border.all(color: Colors.grey, width: 0.95),
//                         ),
//                         child: TextFormField(
//                           decoration: new InputDecoration(
//                               contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 4),
//                               hintText: "Set Redius",
//                               fillColor: Colors.white,
//                               border: InputBorder.none),
//                         )),
//                   ],
//                 )));
//       });
// }

// Widget buildBottomCard() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.end,
//     children: <Widget>[buildDialog()],
//   );
// }

// Widget buildDialog() {
//   return Container(
//     decoration: BoxDecoration(
//         color: AppColors.white,
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30), topRight: Radius.circular(30))),
//     width: double.infinity,
//     height: 330,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         SizedBox(
//           height: 9,
//         ),
//         _buildIamHereSearch(),
//         Container(
//             height: 220,
//             child: ListView.builder(
//               itemCount: places.length,
//               itemBuilder: (BuildContext context, i) {
//                 return Container(
//                   padding: EdgeInsets.only(left: 32),
//                   height: 48,
//                   color: AppColors.lightgrey,
//                   child: ListTile(
//                     onTap: () {
//                       setState(() {
//                         print("Selected Name  = " + places[i].name);
//                         selectedName = places[i].name;
//                       });
//                     },
//                     title: Text(
//                       places[i].name,
//                       style: TextStyle(
//                         fontSize: 13,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             )),
//         _buildIamHereButton()
//       ],
//     ),
//   );
// }

// _buildIamHereButton() {
//   return MaterialButton(
//     onPressed: () {
//       setState(() {
//         GeocodingPlatform.instance
//             .locationFromAddress(selectedName)
//             .then((result) {
//           lat = result[0].latitude;
//           long = result[0].longitude;
//         }).then((value) {
//           _markers.add(Marker(
//               markerId: MarkerId("destination"),
//               position: LatLng(lat, long),
//               icon: BitmapDescriptor.defaultMarkerWithHue(90),
//               infoWindow: InfoWindow(title: "My Dest Point 1")));

//           CameraUpdate camera =
//               CameraUpdate.newLatLngZoom(LatLng(lat, long), 15);
//           _controller.animateCamera(camera).catchError((e) {});

//           //_buildOpenChip();
//           //_getPolyline();
//         });
//       });
//     },
//     color: AppColors.yellowColor,
//     shape: StadiumBorder(),
//     minWidth: 312,
//     height: 48,
//     child: Text(
//       "I'm here",
//       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//     ),
//   );
// }

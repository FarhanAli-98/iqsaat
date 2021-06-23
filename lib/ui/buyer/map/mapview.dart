import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Mapview extends StatefulWidget {
  @override
  _MapviewState createState() => _MapviewState();
}

class _MapviewState extends State<Mapview> {
  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));

  final Geolocator _geolocator = Geolocator();
  final startAddressController = TextEditingController();
  Position _currentPosition;
  Set<Marker> _markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  double totalDistance = 0.0;
  GoogleMapController _controller;
  String _mapStyle;
  var height;
  var width;
  bool shopView = false;

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
                                "Shop Name",
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
                                    'DISTANCE: 0.00 km',
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
  Future bounceShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
              backgroundColor: Colors.grey.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              content: new Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/images/mapIcon.jpeg',
                              ),
                            ),
                            Container(
                              child: Text(
                                'Set Location Perameters',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 15),
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * .85,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                            border: Border.all(color: Colors.grey, width: 0.95),
                          ),
                          child: TextFormField(
                            decoration: new InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 4),
                                hintText: "Set Area",
                                fillColor: Colors.white,
                               
                                border: InputBorder.none),
                          )),
                              Container(
                          margin: EdgeInsets.only(top: 15),
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * .85,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                            border: Border.all(color: Colors.grey, width: 0.95),
                          ),
                          child: TextFormField(
                            decoration: new InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 4),
                                hintText: "Set Redius",
                                fillColor: Colors.white,
                               
                                border: InputBorder.none),
                          )),
                   
                 
                 
                    ],
                  )));
        });
  }

  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        // Store the position in the variable
        _currentPosition = position;
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
        // polylines: Set<Polyline>.of(polylines.values),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
          _controller.setMapStyle(_mapStyle);
        },
        initialCameraPosition: _initialLocation,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        mapType: MapType.normal,
        zoomGesturesEnabled: true,
      ),
    );
  }

  buildSearchField() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 10, bottom: 5, left: 10, top: 40),
        padding: EdgeInsets.only(right: 15, left: 15),
        width: 400,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Search',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
        //bounceShowDialog(context);

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
            buildSearchField(),
            shopView ? buildShopView() : Container(),
          ],
        ),
      ),
    );
  }
}

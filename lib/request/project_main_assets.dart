//flutter run | grep -v "D/ViewRootImpl"

// class FlutterChoiceChip extends StatefulWidget {
//   final String name;
//   final int index;

//   FlutterChoiceChip(this.name, this.index);

//   @override
//   _FlutterChoiceChipState createState() => _FlutterChoiceChipState();
// }

// class _FlutterChoiceChipState extends State<FlutterChoiceChip> {
//   bool isChipSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     final appState = Provider.of<AppState>(context);
//     return Container(
//       height: 48,
//       margin: EdgeInsets.only(right: 14, bottom: 5),
//       child: Stack(
//         children: <Widget>[
//           Selector<AppState, bool>(
//               selector: (_, appState) => appState.isSpecificChipSelected,
//               builder: (context, isSpecificChipSelected, child) {
//                 return ChoiceChip(
//                   selectedColor: AppColors.yellowColor,
//                   selected: isChipSelected,
//                   onSelected: (i) {
//                     appState.setIsSpecificChipSelected(!isSpecificChipSelected);
//                     setState(() {
//                       isChipSelected = !isChipSelected;
//                       print("Selected index = = ="+widget.index.toString());
//                       selectedIndex=widget.index;

//                     });
//                   },
//                   elevation: 1,
//                   backgroundColor: AppColors.white,
//                   label: Container(
//                     padding: EdgeInsets.only(
//                         left: 16, top: 4, bottom: 10, right: 12),
//                     height: 48,
//                     width: 153,
//                     child: Center(
//                       child: Text(
//                         widget.name,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 14,
//                             color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//           isChipSelected
//               ? Positioned(
//                   right: 1,
//                   child: CircleAvatar(
//                     radius: 12,
//                     backgroundColor: AppColors.greenColor,
//                     child: Text(
//                       widget.index.toString(),
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               : Container()
//         ],
//       ),
//     );
//   }
// }

//----------------------------------------------------------

// StreamSubscription _locationSubscription;
// Location _locationTracker = Location();
// Marker marker;
// Circle circle;
// GoogleMapController _controller;

// static final CameraPosition initialLocation = CameraPosition(
//   target: LatLng(37.42796133580664, -122.085749655962),
//   zoom: 14.4746,
// );

// Future<Uint8List> getMarker() async {
//   ByteData byteData = await DefaultAssetBundle.of(context).load("assets/car_icon.png");
//   return byteData.buffer.asUint8List();
// }

// void updateMarkerAndCircle(LocationData newLocalData, Uint8List imageData) {
//   LatLng latlng = LatLng(newLocalData.latitude, newLocalData.longitude);
//   this.setState(() {
//     marker = Marker(
//         markerId: MarkerId("home"),
//         position: latlng,
//         rotation: newLocalData.heading,
//         draggable: false,
//         zIndex: 2,
//         flat: true,
//         anchor: Offset(0.5, 0.5),
//         icon: BitmapDescriptor.fromBytes(imageData));
//     circle = Circle(
//         circleId: CircleId("car"),
//         radius: newLocalData.accuracy,
//         zIndex: 1,
//         strokeColor: Colors.blue,
//         center: latlng,
//         fillColor: Colors.blue.withAlpha(70));
//   });
// }

// void getCurrentLocation() async {
//   try {

//     Uint8List imageData = await getMarker();
//     var location = await _locationTracker.getLocation();

//     updateMarkerAndCircle(location, imageData);

//     if (_locationSubscription != null) {
//       _locationSubscription.cancel();
//     }

//     _locationSubscription = _locationTracker.onLocationChanged().listen((newLocalData) {
//       if (_controller != null) {
//         _controller.animateCamera(CameraUpdate.newCameraPosition(new CameraPosition(
//             bearing: 192.8334901395799,
//             target: LatLng(newLocalData.latitude, newLocalData.longitude),
//             tilt: 0,
//             zoom: 18.00)));
//         updateMarkerAndCircle(newLocalData, imageData);
//       }
//     });

//   } on PlatformException catch (e) {
//     if (e.code == 'PERMISSION_DENIED') {
//       debugPrint("Permission Denied");
//     }
//   }
// }

// @override
// void dispose() {
//   if (_locationSubscription != null) {
//     _locationSubscription.cancel();
//   }
//   super.dispose();
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(widget.title),
//     ),
//     body: GoogleMap(
//       mapType: MapType.hybrid,
//       initialCameraPosition: initialLocation,
//       markers: Set.of((marker != null) ? [marker] : []),
//       circles: Set.of((circle != null) ? [circle] : []),
//       onMapCreated: (GoogleMapController controller) {
//         _controller = controller;
//       },

//     ),
//     floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.location_searching),
//         onPressed: () {
//           getCurrentLocation();
//         }),
//   );
// }
/* getCurrentUserLocation() {
    Firestore.instance.collection('users').document(uid).get().then((value) {
      final data = value.data;

      double lat = 0, long = 0;

      if (data['Lat'] != null) {
        appstate.setLocationConformed(true);
        lat = data['Lat'];
        long = data['Long'];
        setState(() {
          _markers.add(Marker(
              markerId: MarkerId((lat / long).toString()),
              position: LatLng(lat, long),
              icon: pinLocationIcon,
              infoWindow: InfoWindow(title: "my location")));

          CameraUpdate camera =
              CameraUpdate.newLatLngZoom(LatLng(lat, long), 15);
          _controller.animateCamera(camera).catchError((e) {});
        });
      }
    });
  } */

//  getCompanies() {
//   Firestore.instance.collection('company').getDocuments().then((value) {
//     companies = value.documents;

//     companies.forEach((element) {
//       final data = element.data;
//       if (data['Lat'] != null) {
//         setState(() {
//           _markers.add(Marker(
//               markerId: MarkerId(element.documentID),
//               position: LatLng(data['Lat'], data['Long']),
//               icon: greenLocationIcon,
//               onTap: () {
//                 appstate.setIsCompanyIntro(!appstate.isCompanyIntro);
//                 chatId = data['owner_id'];
//                 print(chatId);
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (BuildContext context) => AdView()));
//               },
//               infoWindow: InfoWindow(title: data['address'])));
//         });
//       }
//     });
//   });
// }

//
// _markers.add(Marker(
//         markerId: MarkerId("Devex"),
//         position: LatLng(latitude, longitude),
//         icon: pinLocationIcon,
//         // onTap: () {
//         //   appstate.setIsCompanyIntro(!appstate.isCompanyIntro);
//         //   //chatId = data['owner_id'];
//         //   print(chatId);
//         //   Navigator.push(
//         //       context,
//         //       MaterialPageRoute(
//         //           builder: (BuildContext context) => AdView()));
//         // },
//         infoWindow: InfoWindow(title: "My Location")));
/* TextField(
                controller: null,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return SearchScreen();
                  }));
                },
                decoration: InputDecoration(
                    suffixIcon: 
                    hintText: "Search",
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color: Colors.white, width: 3.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color: Colors.white, width: 3.0))),
              ),
             */

//  addMar(LatLng location) {
//   var markerIdVal = location.toString();

//   final MarkerId markerId = MarkerId(markerIdVal);

//   // creating a new MARKER
//   final Marker marker = Marker(
//     icon: greenLocationIcon,
//     markerId: markerId,
//     position: location == null
//         ? LatLng(37.42796133580664, -122.085749655962)
//         : location,
//     onTap: () {
//       // appstate.setIsCompanyIntro(!appstate.isCompanyIntro);

//       // chatId = doc['owner_id'];
//       // print(chatId);
//       // Navigator.push(context,
//       //     MaterialPageRoute(builder: (BuildContext context) => AdView()));
//     },
//   );
//   _markers.add(marker);
// }


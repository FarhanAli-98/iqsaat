import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../CreateProducts/selectCategory.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
];

List<Widget> _tiles = const <Widget>[
 
  const _Example01Tile(Colors.green, Icons.widgets),
  const _Example01Tile(Colors.amber, Icons.panorama_wide_angle),
  const _Example01Tile(Colors.deepOrange, Icons.send),
  const _Example01Tile(Colors.indigo, Icons.airline_seat_flat),
  const _Example01Tile(Colors.pink, Icons.battery_alert),
  const _Example01Tile(Colors.purple, Icons.desktop_windows),
  const _Example01Tile(Colors.blue, Icons.radio),
  const _Example01Tile(Colors.blue, Icons.radio),
];

class Example01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Example 01'),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {

     Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        CreateProducts()));

        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// class MyItems extends StatelessWidget {
//   const MyItems(this.icon, this.heading, this.color, this.routeName);

//   final int color;
//   final IconData icon;
//   final String heading;
//   final String routeName;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white,
//       elevation: 6.0,
//       shadowColor: Color(0xff2962ff),
//       borderRadius: BorderRadius.circular(20.0),
//       child: Center(
//           child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         //Text here
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             heading,
//                             style: TextStyle(
//                               color: new Color(color),
//                               fontSize: 18.0,
//                             ),
//                           ),
//                         ), //text

//                         //icon
//                         Material(
//                           color: new Color(color),
//                           borderRadius: BorderRadius.circular(24.0),
//                           child: Padding(
//                             padding: const EdgeInsets.all(16.0),
//                             child: IconButton(
//                               icon: Icon(icon),
//                               iconSize: 20,
//                               color: Colors.white,
//                               onPressed: () {
//                                 Navigator.pushNamed(context, routeName);
//                               },
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ]))),
//     );
//   }
// }

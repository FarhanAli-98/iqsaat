// import 'package:flutter/material.dart';
// class products_list extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
  

//       final titles = ['bike', 'car', 'Ac', 'Fan',
//       'Cooler', 'Mobile', 'Washing machine', 'Fridge', 'Iron'];

//       final icons = [Icons.directions_bike, Icons.directions_car,
//       Icons.directions_bike, Icons.directions_bike, Icons.directions_bike,
//       Icons.directions_bike, Icons.directions_subway, Icons.directions_transit,
//       Icons.directions_walk];
//           Widget _body(BuildContext context)
//         {
//       return ListView.builder(
//         itemCount: titles.length,
//         itemBuilder: (context, index) {
//           return Card(
//             color:Colors.white10,
//             child:InkWell( 
//               splashColor: Colors.deepOrange[50],
//               onTap:(){

//               },
//               //                           <-- Card widget
//             child: ListTile(
//               leading: Icon(icons[index]),
//               title: Text(titles[index]),
//             ),)
//           );
//         },
//       );
//     }
//       return Scaffold(
//         appBar: AppBar(
//           title:Text( "Your Products"),
//           backgroundColor: Colors.blue[100],


//         ),

//         body:Container
//         (
//             child:_body(context),
//           )
//       );
    
//   }

//   }

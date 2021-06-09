
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/ui/Seller/Product/categories/categories.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import "package:intl/intl.dart";
import 'package:iqsaat/Widget/categories_card.dart';
import './categories.dart';

class sellerCategories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<sellerCategories> {
  

    DateTime updatedate=DateTime.now();

  

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBarwithbackIcon(context,"Categories" ),
     body:  Container(
              height: MediaQuery.of(context).size.height,
        
        decoration: BoxDecoration(
           // borderRadius: BorderRadius.circular(40),
            color: AppColors.backgroundColor,
        ),
         child: ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index)
  {
     
       return Container(
         margin: EdgeInsets.only(right:20,left:20,top:13,bottom:13),
         decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.backgroundColor,
            boxShadow: [
              BoxShadow(color: Colors.blueGrey,
              offset: Offset(0.0,1.0),
              blurRadius: 6.0,
              
              )
            ]
        ),
         child:category_card(
           categories: categories[index],
         ));
      
  }
            ),
          
    )
    );



  
      
      
      
  }
}






// class ExpansionTileSample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// return MaterialApp(
//   home: Scaffold(
//     appBar: AppBar(
//       title: const Text('ExpansionTile'),
//     ),
//     body: ListView.builder(
//       itemBuilder: (BuildContext context, int index) =>
//           EntryItem(data[index]),
//       itemCount: data.length,
//     ),
//   ),
// );
//   }
// }

// // One entry in the multilevel list displayed by this app.
// class Entry {
//   Entry(this.title, [this.children = const <Entry>[]]);

//   final String title;
//   final List<Entry> children;
// }

// // The entire multilevel list displayed by this app.
// final List<Entry> data = <Entry>[
//   Entry(
// 'Chapter A',
// <Entry>[
//   Entry(
//     'Section A0',
//     <Entry>[
//       Entry('Item A0.1'),
//       Entry('Item A0.2'),
//       Entry('Item A0.3'),
//     ],
//   ),
//   Entry('Section A1'),
//   Entry('Section A2'),
// ],
//   ),
//   Entry(
// 'Chapter B',
// <Entry>[
//   Entry('Section B0'),
//   Entry('Section B1'),
// ],
//   ),
//   Entry(
// 'Chapter C',
// <Entry>[
//   Entry('Section C0'),
//   Entry('Section C1'),
//   Entry(
//     'Section C2',
//     <Entry>[
//       Entry('Item C2.0'),
//       Entry('Item C2.1'),
//       Entry('Item C2.2'),
//       Entry('Item C2.3'),
//     ],
//   ),
// ],
//   ),
// ];

// // Displays one Entry. If the entry has children then it's displayed
// // with an ExpansionTile.
// class EntryItem extends StatelessWidget {
//   const EntryItem(this.entry);

//   final Entry entry;

//   Widget _buildTiles(Entry root) {
// if (root.children.isEmpty) return ListTile(title: Text(root.title));
// return ExpansionTile(

//   // key: PageStorageKey<Entry>(root),
//   title: Text("Category 1",style: TextStyles.headerFontText,),
//   children: [
//     Container(
//       width: 500,
//       height: 50,
//       margin: EdgeInsets.only(left:20,right:20),
//       decoration: BoxDecoration(border: Border.all(color: Colors.black),
//         color: Colors.white,
//       ),
//      child: ListTile(
//        leading: ConstrainedBox(
//   constraints: BoxConstraints(
//     minWidth: 160,
//     minHeight: 160,
//     maxWidth: 260,
//     maxHeight: 160,
//   ),
//   child: Image.asset("assets/images/bike.png", fit: BoxFit.cover),
// ),
// title:Text("Bikes",style: TextStyles.normalFontText2,)
     
//       )
//       ),
//      Container(
//       width: 500,
//       height: 50,
//       margin: EdgeInsets.only(left:20,right:20),
//       decoration: BoxDecoration(border: Border.all(color: Colors.black),
//         color: Colors.white,
//       ),
//      child: ListTile(
//        leading: ConstrainedBox(
//   constraints: BoxConstraints(
//     minWidth: 160,
//     minHeight: 160,
//     maxWidth: 160,
//     maxHeight: 160,
//   ),
//   child: Image.asset("assets/images/bike.png", fit: BoxFit.cover),
// ),
// title:Text("Bikes",style: TextStyles.normalFontText2,)
     
//       )
//       )
//        ]
// );


  
//   }

//   @override
//    Widget build(BuildContext context) {
// return _buildTiles(entry);
//   }
// }
import 'package:flutter/material.dart';
import 'package:iqsaat/ui/History/product_history.dart';
import './product_history.dart';

class user_history extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  

      final titles = ['Transaction 1', 'Transaction 2', 'Transaction 3', 'Transaction 4',
      'Transaction 5', 'Transaction 6', 'Transaction 7', 'Transaction 8', 'Transaction 9'];

      final icons = [Icons.directions_bike, Icons.directions_car,
      Icons.directions_bike, Icons.directions_bike, Icons.directions_bike,
      Icons.directions_bike, Icons.directions_subway, Icons.directions_transit,
      Icons.directions_walk];
      final dates=['19,4,2021','19,4,2021','19,4,2021','19,4,2021','19,4,2021','19,4,2021','19,4,2021','19,4,2021'
      '19,4,2021'];
          Widget _body(BuildContext context)
        {
      return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
                      elevation: 20.0,
            
            color:Colors.lightBlue,
            child:SizedBox(
              height:120.0,
            child:InkWell( 
              splashColor: Colors.deepOrange[50],
              onTap:(){
                  Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (BuildContext context) =>
                                       productHistory()));
              },
              //                           <-- Card widget
            child: ListTile(
              leading: Image.asset('assets/images/honda125.jpg'),
              title: Text(titles[index]),
              subtitle: Text(dates[index]),

              trailing: Icon(Icons.add),
            ),),)
          );
        },
      );
    }
      return Scaffold(
        appBar: AppBar(
          title:Text( "Your History"),
          backgroundColor: Colors.blue[100],


        ),

        body:Container
        (
            child:_body(context),
          )
      );
    
  }

  }

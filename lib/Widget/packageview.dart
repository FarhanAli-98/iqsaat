import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';

void packageview(context){
    showModalBottomSheet(
      elevation: 15,
     // barrierColor: AppColors.primarycolor,
      context: context,
     shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(15.0),
  ),
      builder: (BuildContext bc){
          return Container(
            margin: EdgeInsets.only(top:15),
            decoration:BoxDecoration(borderRadius:BorderRadius.circular(12)),
            height: MediaQuery.of(context).size.height/3.8,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                 Container(
                   height: MediaQuery.of(context).size.height/12,
                   padding: EdgeInsets.only(left:10,right:10),

               decoration:BoxStyles.deco,
               child:Center(
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Plan 1",style:TextStyle(fontWeight: FontWeight.bold,color: AppColors.primarycolor,fontSize:14)),
                       Text("7 Months",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12)),
                       Text("4200\p\k\r"+"Per Month",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12)),
                       


                     ],
                     ),
                     SizedBox(height: 5,),
                     Align(alignment:Alignment.bottomRight,
                     child:Text("8,400\p\k\r" + "2 Months",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12))
                     )
                   ],
                 ),
               )
               
             ),
              Container(
                   height: MediaQuery.of(context).size.height/12,
                   padding: EdgeInsets.only(left:10,right:10),

               decoration:BoxStyles.deco,
               child:Center(
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Plan 2",style:TextStyle(fontWeight: FontWeight.bold,color: AppColors.primarycolor,fontSize:14)),
                       Text("7 Months",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12)),
                       Text("4200\p\k\r"+"Per Month",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12)),
                       


                     ],
                     ),
                     SizedBox(height: 5,),
                     Align(alignment:Alignment.bottomRight,
                     child:Text("8,400\p\k\r" + "2 Months",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12))
                     )
                   ],
                 ),
               )
               
             ),
              Container(
                   height: MediaQuery.of(context).size.height/12,
                   padding: EdgeInsets.only(left:10,right:10),

               decoration:BoxStyles.deco,
               child:Center(
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Plan 3",style:TextStyle(fontWeight: FontWeight.bold,color: AppColors.primarycolor,fontSize:14)),
                       Text("7 Months",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12)),
                       Text("4200\p\k\r"+"Per Month",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12)),
                       


                     ],
                     ),
                     SizedBox(height: 5,),
                     Align(alignment:Alignment.bottomRight,
                     child:Text("8,400\p\k\r" + "2 Months",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:12))
                     )
                   ],
                 ),
               )
               
             ),
             
             
            ],
          ),
          );
      }
    );
}
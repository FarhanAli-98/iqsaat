import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';

import '../drawer.dart';
class tabview extends StatelessWidget {
  Widget tab1,tab2;
  String tabtitle1,tabtitle2,title;
  tabview(
    {
      @required this.tab1,
     @required this.tab2,
     @required this.title,
     @required this.tabtitle1,
     @required this.tabtitle2,
    }
  );
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: AppDrawer(),
          appBar: AppBar(
            elevation: 5.0,
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: AppColors.primarycolor,
              tabs: [
                Tab(text:tabtitle1,),
                Tab(text:tabtitle2),
              ],
            ),
            title: Text(title,style:TextStyle(color: AppColors.primarycolor)),
            actions:<Widget>
            [
              
              GestureDetector(child: Icon(Icons.notifications_active),
              onTap: (){},),
              SizedBox(width: 4,),
             GestureDetector(child: Icon(Icons.message),
              onTap: (){},),
            ]
          ),
          body: TabBarView(
            children: [
              tab1,
              tab2,
            ],
          ),
  
    );
  }
}
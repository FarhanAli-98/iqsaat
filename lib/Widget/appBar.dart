import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/ui/user/home/mapview.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:badges/badges.dart';
Widget appBarwithbackIcon(BuildContext context,String titles) {
  return AppBar(
    title: Text(titles,style: TextStyle(color: Colors.black),),
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.grey,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    
  );
}

Widget appBarwithCenterTitle(BuildContext context, String title) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.grey,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: GoogleFonts.poppins(textStyle: TextStyles.buttonFontText),
    ),
  );
}

Widget appBarwithImageTitle(BuildContext context, String title) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: AppColors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.grey,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    centerTitle: false,
    title: Row(
      children: <Widget>[
        Container(
          child: CircleAvatar(
            backgroundColor: AppColors.greyBackColor,
            radius: 30,
            // child: Icon(Icons.person),
            backgroundImage: AssetImage('assets/appIcons/image47.png'),
          ),
        ),
        SizedBox(width: 15),
        Text(
          title,
          style: GoogleFonts.poppins(textStyle: TextStyles.buttonFontText),
        ),
      ],
    ),
  );
}

Widget appBarUserSide(BuildContext context, String title) {
  return AppBar(
    
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 2,
          leading: Builder(
              builder: (context) => InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      //width: 55,
                      // height: 30,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 5,
                                color: Colors.black12)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              topRight: Radius.circular(50))),
                      child: Image.asset(
                        'assets/appIcons/menu.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  )),
          actions: <Widget>[
            GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (c) => Mapview())),
                child: Container(
                    margin: EdgeInsets.only(right: 13),
                    child: Icon(
                      Icons.search
                      ,
                      color: Colors.black,
                    ))),
    
            GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (c) => Mapview())),
                child: Container(
                  margin: EdgeInsets.only(right: 13),
                   child:   Badge(
     badgeContent: Text('3'),
      child: Icon(Icons.store_mall_directory),
    )
                ))
          ],
          title: Center(
              child: TextFields.maskTextField(
            context,
            hintText: "Search",
          )),
        );
       
}

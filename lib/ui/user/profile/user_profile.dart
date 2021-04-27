
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';


class ProfilePage extends StatefulWidget {
  final String profileid;

  const ProfilePage({Key key, this.profileid}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  Widget build(BuildContext context) {
   
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 0.0,
      //   title: Text(
      //     "User Profile",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.cyan[900],
      //         fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      appBar: AppBar(
        //centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.primarycolor,
        title: Text(
          'Select Category',
          style: TextStyle(fontWeight: FontWeight.w400),
          // style: Styles.heading,
        ),
      ),
      body: SingleChildScrollView(
        
        child: 

        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  //width: MediaQuery.of(context).size.width * 1.2,
                  child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            Images.person,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        )
                      // : Card(
                      //     semanticContainer: true,
                      //     clipBehavior: Clip.antiAliasWithSaveLayer,
                      //     child: Image.asset(Images.tind),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //     ),
                      //     elevation: 5,
                      //     margin: EdgeInsets.all(10),
                      //   ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 95.0, 5.0),
                  child: Text(
                    "Name",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 30.0, 5.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(37.0),
                        side: BorderSide(color: Colors.grey[300])),
                    onPressed: () {},
                    color: Colors.red[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.favorite,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          " User name",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 5.0),
              child: Container(
                width: 160,
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 19,
                        color: Colors.black,
                      ),
                      Text(
                        'Green Town Lahore',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   height: 120,
            //   child: Padding(
            //     padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 10.0),
            //     child: ListView.builder(
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (BuildContext context, int index) {
            //         return Container(
            //           height: MediaQuery.of(context).size.height * 0.1,
            //           width: MediaQuery.of(context).size.width * 0.3,
            //           child: Card(
            //                   semanticContainer: true,
            //                   clipBehavior: Clip.antiAliasWithSaveLayer,
            //                   child: Image.network(
            //                     "https://i.pinimg.com/736x/35/4a/59/354a59f73d62ffde38c0eada0177f164.jpg",
            //                     fit: BoxFit.fill,
            //                   ),
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(10.0),
            //                   ),
            //                   elevation: 5,
            //                   margin: EdgeInsets.all(10),
            //                 )
            //               // : Card(
            //               //     semanticContainer: true,
            //               //     clipBehavior: Clip.antiAliasWithSaveLayer,
            //               //     child: Image.asset(Images.tind,
            //               //     fit: BoxFit.fill,
            //               //     ),
            //               //     shape: RoundedRectangleBorder(
            //               //       borderRadius: BorderRadius.circular(10.0),
                                
            //               //     ),
            //               //     elevation: 5,
            //               //     margin: EdgeInsets.all(10),
            //               //   ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
              child: Text(
                "About me",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
              child: Text(
               " profileProvider.userProfileSingle.data.aboutme",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 5.0),
              child: Text(
                "Your Empowerment song",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
              child: Text(
               " profileProvider.userProfileSingle.data.empoweringsong",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 5.0),
              child: Text(
                "I am ",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
              child: Text(
               " profileProvider.userProfileSingle.data.jobtitle",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 5.0),
              child: Text(
                "Education ",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
              child: Text(
                "profileProvider.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Ethnicity ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Religion ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Politics ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
             padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                   " profileProvider.u",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "profileProvider.u",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    //profileProvider.,
                   " profileProvider.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        
      ),
    );
  }


}
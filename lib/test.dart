import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.5 / 10.0,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.all(0),
                child: Card(
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://spng.pngfind.com/pngs/s/9-99467_apple-watch-png-mobile-watch-apple-price-transparent.png'),
                                    fit: BoxFit.fill),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "1 Shoot whole night",
                              style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.normal),
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Location: Pakistan UMT | Views 350",
                              style: TextStyle(fontSize: 10.0,color: Colors.grey),

                            )
                        ),
                        Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "25",
                              style: TextStyle(fontSize: 18.0,fontWeight:  FontWeight.bold),

                            )
                        ),
                      ],
                    )));
          },
        ));
  }
}
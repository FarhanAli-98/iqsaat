import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WriteReview extends StatefulWidget {
  @override
  _WriteReviewState createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Write Review"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      height: 200,
                      width: 100,
                      margin: EdgeInsets.only(left: 5, top: 5),
                      child: CircleAvatar(
                        radius: 50,
                        child: Image.network(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Title",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Description",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 12),
                height: 60,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.grey[100],
                child: Text(
                  "Add Photo or Video",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 120,
                child: Card(
                  child: Center(
                    child: Column(
                      children: [
                        Icon(Icons.upload_file),
                        Text(
                          "Click here to upload",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 12),
                height: 60,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.grey[100],
                child: Text(
                  "Write Your Review",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: 120,
                child: Card(
                  child: Container(
                    color: Colors.grey[100],
                    child: TextField(),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: ElevatedButton(
                    child: Text("Submit Review"),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
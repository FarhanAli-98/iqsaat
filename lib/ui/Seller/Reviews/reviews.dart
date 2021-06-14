import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iqsaat/ui/Seller/Reviews/reviewTablist.dart';
import 'package:iqsaat/ui/Seller/Reviews/writeReview.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


// ignore: must_be_immutable
class Review extends StatelessWidget {
  List<ReviewTabList> tabs;
  Review(this.tabs);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                heightFactor: 2,
                child: Text(
                  "4.0",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Center(
                heightFactor: 1,
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Center(
                child: Text(
                  "Based On 23 Reviews",
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 36,
                          ),
                          child: Text("Excellent"),
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.height * 0.4,
                          lineHeight: 9,
                          percent: 0.9,
                          progressColor: Colors.green[400],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 58),
                          child: Text("Good"),
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.height * 0.4,
                          lineHeight: 9,
                          percent: 0.7,
                          progressColor: Colors.lightGreen[400],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 41),
                          child: Text("Average"),
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.height * 0.4,
                          lineHeight: 9,
                          percent: 0.6,
                          progressColor: Colors.yellow,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 1),
                          child: Text("Below Average"),
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.height * 0.4,
                          lineHeight: 9,
                          percent: 0.5,
                          progressColor: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 63),
                          child: Text("Poor"),
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.height * 0.4,
                          lineHeight: 9,
                          percent: 0.2,
                          progressColor: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                  itemBuilder: (ct, index) {
                    return Card(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 55,
                                  margin: EdgeInsets.only(left: 5, top: 5),
                                  child: CircleAvatar(
                                    radius: 50,
                                    child: tabs[index].rImage,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 5, top: 5),
                                      child: Text(
                                        '${tabs[index].title}',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(child: tabs[index].ratingBar),
                                        Text('${tabs[index].ratingNum}'),
                                        Text('${tabs[index].days}'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text('${tabs[index].desp}'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: tabs.length,
                ),
              ),
              Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => WriteReview(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Write Review",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




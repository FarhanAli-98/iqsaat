import 'package:flutter/material.dart';

class FAQS1 extends StatefulWidget {
  const FAQS1({Key key}) : super(key: key);

  @override
  _FAQS1State createState() => _FAQS1State();
}

class _FAQS1State extends State<FAQS1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Icon(
              Icons.arrow_back,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'FAQS',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              height: 30,
              width: 30,
              child: Icon(Icons.search),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                   
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Order Related',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Delivery Related',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Business Related',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Website and Account Related',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Payment Related',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Return & Cancel Policy',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

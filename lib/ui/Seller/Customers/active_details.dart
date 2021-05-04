import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/ui/cart/cart_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';

class Active_details extends StatefulWidget {
  Active_details({Key key}) : super(key: key);

  @override
  _Active_detailsState createState() => _Active_detailsState();
}

class _Active_detailsState extends State<Active_details>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  DateTime now = DateTime.now();
  String installmentStDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInToLinear));
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isLiked = true;
  Widget _appBar() {
    return Container(
      //padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
                      child: _icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
              size: 20,
              padding: 12,
              isOutLine: true,
              onPressed: () {}
              ,
            ),
            onTap:() {
               Navigator.of(context).pop();
            },
          ),
         _status(),
        ],
      ),
    );
  }

  Widget _icon(
    IconData icon, {
    Color color = Colors.white,
    double size = 20,
    double padding = 10,
    bool isOutLine = false,
    Function onPressed,
  }) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(padding),
      // margin: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white,
            style: isOutLine ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color:
            isOutLine ? Colors.transparent : Theme.of(context).backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xfff8f8f8),
              blurRadius: 5,
              spreadRadius: 10,
              offset: Offset(5, 5)),
        ],
      ),
      child: Icon(icon, color: color, size: size),
    );
    // ).ripple(() {
    //   if (onPressed != null) {
    //     onPressed();
    //   }
    // }, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _productImage() {
    return AnimatedBuilder(
      builder: (context, child) {
        return AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: animation.value,
          child: child,
        );
      },
      animation: animation,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Text(
            "",
            // fontSize: 160,
            // color: LightColor.lightGrey,
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: Carousel(
              boxFit: BoxFit.cover,
              autoplay: false,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 6.0,
              dotIncreasedColor: Color(0xFFFF335C),
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 10.0,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                Image.asset('assets/images/a70.jpeg'),
                NetworkImage(
                    'https://www.gizmochina.com/wp-content/uploads/2019/03/Samsung-Galaxy-A70-600x600.jpg'),
                NetworkImage(
                    'https://s3.amazonaws.com/download.samsungmobilepress.com/galaxy_A/images/con_a70_02.png'),
              ],
            ),
          ),
          // Image.asset('assets/images/a70.jpeg')
        ],
      ),
    );
  }

  Widget _categoryWidget() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 0),
        // width: AppTheme.fullWidth(context),
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          // children:
          //  AppData.showThumbnailList.map((x) => _thumbnail(x)).toList()),
        ));
  }

  Widget _thumbnail(String image) {
    return AnimatedBuilder(
      animation: animation,
      //  builder: null,
      builder: (context, child) => AnimatedOpacity(
        opacity: animation.value,
        duration: Duration(milliseconds: 500),
        child: child,
      ),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(13)),
              // color: Theme.of(context).backgroundColor,
            ),
            child: Image.asset(image),
          ) //.ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13))),
          ),
    );
  }

  Widget _detailWidget() {
    return DraggableScrollableSheet(
      maxChildSize: .8,
      initialChildSize: .53,
      minChildSize: .53,
      builder: (context, scrollController) {
        return Container(
          // padding: AppTheme.padding.copyWith(bottom: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                        // color: LightColor.iconColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      // color: LightColor.iconColor,
                      borderRadius: BorderRadius.all(Radius.circular(5))),

                  // decoration: new BoxDecoration(color: Colors.indigo[100],shape: BoxShape.circle),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "CustName:Usama Yousaf",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "\R\S\:",

                                // color: LightColor.red,
                              ),
                              Text(
                                "25000",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                // fontSize: 25,
                              ),
                            ],
                          ),
                          Text(
                            "Monthly",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            // fontSize: 25,
                          ),
                
                        ],
                      ),
                     
                    ],
                  ),
                ),
                Text(
                        "House no Nile street Township ,Lahore",
                        style: TextStyle(fontSize: 20,color: Colors.blue),
                      ),
                SizedBox(
                  height: 4,
                ),
                Card(
                   color:Colors.cyan[50],
                    elevation: 2.0,
                    margin: EdgeInsets.all(4),
                    child: _maindetail()),
                SizedBox(
                  height: 30,
                ),
                _payments(),
                SizedBox(
                  height: 10,
                ),
                _progress(),

                SizedBox(
                  height: 10,
                ),
                _shopProfile(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _payments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text(
            "Monthly Payments Status",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
            //fontSize: 14,
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _sizeWidget("Janurary"),
              SizedBox(width: 10),
              _sizeWidget("February", isSelected: true),
              SizedBox(width: 10),
              _sizeWidget("March"),
              SizedBox(width: 10),
              _sizeWidget("April"),
              SizedBox(width: 10),
              _sizeWidget("May"),
              SizedBox(width: 10),
              _sizeWidget("June", isSelected: true),
              SizedBox(width: 10),
              _sizeWidget("July"),
              SizedBox(width: 10),
              _sizeWidget("August"),
              SizedBox(width: 10),
            ],
          ),
        )
      ],
    );
  }

  Widget _sizeWidget(String text,
      {Color color = Colors.greenAccent, bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white,
            style: !isSelected ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: isSelected ? Colors.red : Theme.of(context).backgroundColor,
      ),
      child: Text(
        text,

        //color: isSelected ? LightColor.background : LightColor.titleTextColor,
      ),
    ); //.ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _progress() {
    double percent = 45.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text("Progress",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                   )
              // fontSize: 14,
              ),
        ),
        SizedBox(height: 20),
        Card(
          child: SizedBox(
            height: 110,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircularPercentIndicator(
                    radius: 100.0,
                    lineWidth: 8.0,
                    animation: true,
                    percent: percent / 100,
                    center: Text(
                      percent.toString() + "%",
                      style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    backgroundColor: Colors.black,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.greenAccent,
                  ),
                ),
                Text(
                  "4 out of 10 Installments Recieved",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _colorWidget(Color color, {bool isSelected = false}) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color.withAlpha(150),
      child: isSelected
          ? Icon(
              Icons.check_circle,
              color: color,
              size: 18,
            )
          : CircleAvatar(radius: 7, backgroundColor: color),
    );
  }

  Widget _maindetail() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            "Samsung A70",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Next Payment Date:  ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "12thApril,2021",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
              SizedBox(
              width:20
              ),
              Icon(Icons.notifications_none_sharp,size:20,color: Colors.yellowAccent,)
              
            ],
          ),
          SizedBox(
            height: 15,
          ),
           Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              "    Started:"+installmentStDate,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            SizedBox(height: 5,),
            Text(
              "Ending: Sep2021",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              "Total:75,000\P\K\R",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "Recieved:45,000\P\K\R",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
          ])
        ]);
  }

  Widget _shopProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "Customer Profile",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
            // fontSize: 14,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Colors.blue[50],
          elevation: 10.0,
          child: InkWell(
            child: SizedBox(
                height: 80.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.shop,
                      color: Colors.lightBlue,
                    ),
                    Text(
                      "   Usama   ",
                      style: (TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                )),
            onTap: () {},
          ),
        ),
      ],
    );
  }
  Widget _status()
  {
    return Container(
                                  padding: EdgeInsets.only(top: 02),
                                  height: 25,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.blueAccent,
                                      boxShadow: [
                                        BoxShadow(
                                            color: AppColors.primarycolor,
                                            blurRadius: 1.5,
                                            offset: Offset(0, 2))
                                      ]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Status:Ongoing',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),

                          
                                    ],
                                  ),
                                );
  }

  FloatingActionButton _flotingButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartScreen()),
        );
      },
      backgroundColor: Colors.orange,
      child: Icon(Icons.chat_bubble,
          color: Theme.of(context).floatingActionButtonTheme.backgroundColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _flotingButton(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xfffbfbfb),
              Color(0xfff7f7f7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _appBar(),
                  _productImage(),
                  _categoryWidget(),
                ],
              ),
              _detailWidget()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:iqsaat/ui/cart/cart_screen.dart';
import 'package:iqsaat/utils/app_colors.dart';
//import 'package:flutter_ecommerce_app/src/model/data.dart';
//import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
//import 'package:flutter_ecommerce_app/src/themes/theme.dart';
//import 'package:flutter_ecommerce_app/src/widgets/title_text.dart';
//import 'package:flutter_ecommerce_app/src/widgets/extentions.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage({Key key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
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
          _icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 15,
            padding: 12,
            isOutLine: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          _icon(isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : Colors.grey,
              size: 15,
              padding: 12,
              isOutLine: false, onPressed: () {
            setState(() {
              isLiked = !isLiked;
            });
          }),
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
      child: Icon(icon, color: color, size: size),);
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
            height:300,
            width: 300 ,
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
              NetworkImage('https://www.gizmochina.com/wp-content/uploads/2019/03/Samsung-Galaxy-A70-600x600.jpg'),
              NetworkImage('https://s3.amazonaws.com/download.samsungmobilepress.com/galaxy_A/images/con_a70_02.png'),
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
        )//.ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13))),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                     Column(
                       children: [
                         Text( "Samsung mobile A70",style: TextStyle(fontSize: 25),),
                         Align(alignment: Alignment.bottomLeft,
                           child: Text("Category:",style: TextStyle(color: AppColors.primarycolor))),
                        Align(alignment: Alignment.bottomLeft, child:Text("SubCategory:",style: TextStyle(color: AppColors.primarycolor))),
                       ],
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
                               "45000",style: TextStyle(fontWeight: FontWeight.bold),
                               // fontSize: 25,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 17),
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 17),
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 17),
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 17),
                              Icon(Icons.star_border, size: 17),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _installmentPlan(),
                SizedBox(
                  height: 10,
                ),
                _location(),
                SizedBox(
                  height: 10,
                ),
                _description(),
                 SizedBox(
                  height: 10,),
                  _shopProfile(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _installmentPlan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
           "Installment Plan",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueAccent) ,
          //fontSize: 14,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _sizeWidget("2000"),
            _sizeWidget("10000", isSelected: true),
            _sizeWidget("8000"),
            _sizeWidget("5000"),
          ],
        )
      ],
    );
  }

  Widget _sizeWidget(String text,
      {Color color = Colors.white, bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white,
            style: !isSelected ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color:
            isSelected ? Colors.orange : Theme.of(context).backgroundColor,
      ),
      child:Text(
        "Plan",
        
        //color: isSelected ? LightColor.background : LightColor.titleTextColor,
      ),
    );//.ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)));
 }

  Widget _location() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
         "Location",style:TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent)
         // fontSize: 14,
        ),
        SizedBox(height: 20),
         Card(
        child:SizedBox(
          height: 80,
          width: 400,
        child: Text("Hight court society C1 Johar town Umt",
        style:  TextStyle(color: Colors.lightBlue,fontSize: 14,fontWeight: FontWeight.bold),),),
     ) ,
       
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

  Widget _description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
             SizedBox(height: 20),
        Text("Descrption",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
        SizedBox(height: 10,),
        Card(
        child:SizedBox(
          height: 80,
          width: 400,
        child: Text("Descrption here",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
     ) )]);
  }
  Widget _shopProfile(){
    return Column(

    crossAxisAlignment:CrossAxisAlignment.start,
    children: <Widget>
    [
        SizedBox(height: 20,),
        Text(
         "Shop Profile",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent),
         // fontSize: 14,
        ),
        SizedBox(height: 10,),
        Card(
          color: Colors.blue[50],
          elevation: 10.0,
          child:InkWell(
            child: SizedBox(
              height: 80.0,
              child:Row(children: [
                Icon(Icons.shop,color: Colors.lightBlue,),
                Text("   Raheem Electronics   ",style:(TextStyle(fontWeight: FontWeight.bold)),)

              ],)
            ),
            onTap: ()
            {},
          ),
        ),
   
        

      ],
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
      child: Icon(Icons.shopping_basket,
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
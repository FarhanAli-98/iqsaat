import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/ui/Product/product_detail.dart';



class AdsDetails {
  const AdsDetails({
    @required this.assetName,
    @required this.title,
    @required this.price,
    @required this.description,
    @required this.category,
    @required this.views,
   // this.cardType = CardType.standard,
  }) ;

  final String assetName;
  final String title;
  final double price;
  final String description;
  final String category;
  final double views;
  //final CardType cardType;
}

List<AdsDetails> Adslist(BuildContext context) => [
      AdsDetails(
        assetName: '',
      
        title:
            "Mobile phone",
        price:40000,
        description: "Here here here",
        category: "Mobile/Laptops",
        views:10,
      ),
    ];

class AdsCard extends StatefulWidget {
  @override
  _AdsCardState createState() =>
      _AdsCardState();
}

class _AdsCardState
    extends State<AdsCard> {
  // This height will allow for all the Card's content to fit comfortably within the card.
  static const height = 380.0;
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      top: false,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SectionTitle(
                title: "Title"),
            SizedBox(
              height: height,
              child: Card(
                // This ensures that the Card's children (including the ink splash) are clipped correctly.
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: (){
                     Navigator.push(
                                      context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                       ProductDetailPage() ));
                  },
                  onLongPress: () {
                    print('Selectable card state changed');
                    setState(() {
                      _isSelected = !_isSelected;
                    });
                  },
                  // Generally, material cards use onSurface with 12% opacity for the pressed state.
                  splashColor: colorScheme.onSurface.withOpacity(0.12),
                  // Generally, material cards do not have a highlight overlay.
                  highlightColor: Colors.transparent,
                  child: Stack(
                    children: [
                      Container(
                        color: _isSelected
                          
                            ? colorScheme.primary.withOpacity(0.08)
                            : Colors.transparent,
                      ),
                      CardContent(),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            Icons.check_circle,
                            color: _isSelected
                                ? colorScheme.primary
                                : Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(title, style: Theme.of(context).textTheme.subtitle1),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.headline5.copyWith(color: Colors.white);
    final descriptionStyle = theme.textTheme.subtitle1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 196.0,
          child: Stack(
            children: [
              Positioned.fill(
                // In order to have the ink splash appear above the image, you
                // must use Ink.image. This allows the image to be painted as
                // part of the Material and display ink effects above it. Using
                // a standard Image will obscure the ink splash.
                child: Ink.image(
                  image: AssetImage(
                   "assets/images/bike.png",
                    //package: ads.assetPackage,
                  ),
                  fit: BoxFit.cover,
                  child: Container(),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Title",
                    style:TextStyle(color:Colors.blue,fontSize: 16.0,fontWeight:FontWeight.bold),
                    
                  ),
                ),
              ),
            ],
          ),
        ),
        // Description and share/explore buttons.
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: DefaultTextStyle(
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: descriptionStyle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // This array contains the three line description on each card
                // demo.
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                   "Descrption here",
                    style: descriptionStyle.copyWith(color: Colors.black54,fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Price",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                Text("Category:",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                Text("Views:",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
     //  
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                child: Text("Plan",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 15.0),),
                   
                textColor: Colors.amber.shade500,
                onPressed: () {
                  print('InstallmentPlanScreen');
                },
              ),
              FlatButton(
                child: Text("Reviews",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 15.0)),
                   
                textColor: Colors.amber.shade500,
                onPressed: () {
                  print('pressed');
                },
              ),
            ],
          ),
      ],
    );
  }
}

class SellerAds extends StatefulWidget {
  

  @override
  _SellerAdsState createState() => _SellerAdsState();
}

class _SellerAdsState extends State<SellerAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("My Ads"),
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
          children: [
           // for (final list in cardslist(context))
            
            Container(
               // height: 400,
                margin: const EdgeInsets.only(bottom: 8),
                
                child:AdsCard()
              ),
               Container(
                margin: const EdgeInsets.only(bottom: 8),
                child:AdsCard()
              
              ),
               Container(
                margin: const EdgeInsets.only(bottom: 8),
                child:AdsCard()
              
              ),
               Container(
                margin: const EdgeInsets.only(bottom: 8),
                child:AdsCard()
              
              )
            
          ],
        ),
      ),
    );
  }
}
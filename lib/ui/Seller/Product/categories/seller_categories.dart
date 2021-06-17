
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/ui/Seller/Product/Ads/Seller_Ads.dart';
import 'package:iqsaat/ui/Seller/Product/categories/categories.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';
import "package:intl/intl.dart";
import 'package:iqsaat/Widget/categories_card.dart';
import './categories.dart';

class sellerCategories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<sellerCategories> {
  

    DateTime updatedate=DateTime.now();

  

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBarwithbackIcon(context,"Categories" ),
     body:  Container(
              height: MediaQuery.of(context).size.height,
        
        decoration: BoxDecoration(
           // borderRadius: BorderRadius.circular(40),
            color: AppColors.backgroundColor,
        ),
         child: ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index)
  {
     
       return Container(
         margin: EdgeInsets.only(right:20,left:20,top:13,bottom:13),
         decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.backgroundColor,
            boxShadow: [
              BoxShadow(color: Colors.blueGrey,
              offset: Offset(0.0,1.0),
              blurRadius: 6.0,
              
              )
            ]
        ),
         child:InkWell(

           onTap:(){
             AppRoutes.push(context, SellerAds(
               category: "Mobile Phones",
               subcategory: "Subcategory",
             ));
           },
             
             
                    child: category_card(
             categories: categories[index],
           
         )
         ));

         
      
  }
            ),
          
    )
    );



  
      
      
      
  }
}







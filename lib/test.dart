import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MobileAds extends StatefulWidget {
  @override
  _MobileAdsState createState() => _MobileAdsState();
}

class _MobileAdsState extends State<MobileAds> {
  TextEditingController firstcontroller = TextEditingController();
  TextEditingController secondcontroller = TextEditingController();
  TextEditingController thirdcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String title=" ";
  bool validateAndSave() {
    final form = _formKey.currentState;
    form.save();
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }
int selectedIndex = -1;

  validateAnd(BuildContext context) {
    if (validateAndSave()) {
      print("Validation Comp[lete");
      print(firstcontroller.text);
      print(secondcontroller.text);
      print(thirdcontroller.text);
      setState(() {
        title=firstcontroller.text;
      });
    } else {
      print("Validation Wrong");
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Advertisement Form")),
      body: SingleChildScrollView(
          child: Container(
        child: Form(
          key: _formKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
              title,
                style: TextStyle(
                  fontSize: 30,

                  color: Colors.green,
                  //background: Colors.accents,
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(25),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter model name';
                    }
                    return null;
                  },
                  controller: firstcontroller,
                  keyboardType: TextInputType.name,
                  decoration:
                      new InputDecoration(labelText: "Enter Model Name"),
                ),
              ),
 
              
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextFormField(

                          inputFormatters: [
                          new LengthLimitingTextInputFormatter(3),
                           ],
                  validator: (value) {
                    if (value.length <= 2) {
                      return 'Please  increase your numbers';
                    }
                    return null;
                  },
                  controller: secondcontroller,
                  keyboardType: TextInputType.number,
                  decoration:
                      new InputDecoration(labelText: "Enter Price"),
                ),
              ),
              
             
              Align(
              alignment: Alignment.centerLeft,
              child: Container(
              child: Padding(padding: EdgeInsets.all(20.0),
              child: Text(
               "Description",
               style: TextStyle(   
                    color: Colors.black38,
                    fontSize: 15),
                  ),
              ),
                ),
              ),


          Card(
            color: Colors.white,
           
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 500,
                maxLines: 3,
                decoration: InputDecoration.collapsed(hintText: "Discription of product"),
              ),
            )
          ),

              Align(
              alignment: Alignment.centerLeft,
              child: Container(
              child: Padding(padding: EdgeInsets.all(20.0),
              child: Text(
               "Description",
               style: TextStyle(   
                    color: Colors.black38,
                    fontSize: 15),
                  ),
              ),
                ),
              ),
              
              
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.282,
                  child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),),
                    color: Colors.white,
                    child: Center(
                    child: Text(
                      "New",
                      style: TextStyle(fontSize: 26, color: Colors.black),
                    ),
                  )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.282,
                  child: Card(
                    color: Colors.white.withOpacity(1),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),),
                    child: Center(
                        child: Text(
                      "Use",
                      style: TextStyle(fontSize: 26, color: Colors.black),
                    )),
                  ),
                ),
                 Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  //itemCount: iconList.length,
                  itemBuilder: (BuildContext context, int position) {
                    return InkWell(
                      onTap: () => setState(() => selectedIndex=position),
                      child: Container(
                        width: 150,
                        child: Card(
                          shape: (selectedIndex==position)
                              ? RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.green))
                              : null,
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              //Icon(iconList[position].iconName),
                              //Text(iconList[position].titleIcon)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
                
              ]),
               Align(
                alignment: Alignment.bottomCenter,
               child: RaisedButton(
               onPressed: () {
                 validateAnd(context);
               },
               child: const Text('Submit', style: TextStyle(fontSize: 20)),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 5,
      ),
    ),
              
            ],
          ),
        ),
      ),
      
      
    ),
  );
  }
}
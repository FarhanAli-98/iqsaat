import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';


double width, height;
enum Laguage { English, French, Spanish }
var languageRadioGroup = true;
Laguage laguage = Laguage.English;

class LanguagePage extends StatelessWidget {
  Widget _body(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 32),
            width: double.infinity,
            child: Card(
              elevation: 9.0,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Container(
                height: height,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 45.0,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _displayRadioTile('English', true),
                        _displayDivider(),
                        _displayRadioTile('French', false),
                        _displayDivider(),
                        _displayRadioTile('Spanish', false),
                      ]),
                ),
              ),
            )),
      ],
    );
  }

  RadioListTile _displayRadioTile(String text, bool value) {
    return RadioListTile(
      // selected: value,
      value: value,
      groupValue: languageRadioGroup,
      onChanged: null,
      activeColor: AppColors.greenColor,
      title: Text(text, style: TextStyles.buttonFontText),
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }

  Padding _displayDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Divider(
        color: AppColors.secondayTextColor,
        height: 2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: AppColors.background),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBarwithCenterTitle(context, 'Choose language'),
          body: _body(context),
          resizeToAvoidBottomInset: false,
        ),
      ),
    );
  }
}

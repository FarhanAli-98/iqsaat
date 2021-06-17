import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/packageview.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/Widget/packageview.dart';

class Fab extends StatefulWidget {
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  Fab({this.onPressed, this.tooltip, this.icon});

  @override
  _FabState createState() => _FabState();
}

class _FabState extends State<Fab>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _FabHeight = 56.0;

  @override
  initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: AppColors.primarycolor,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _FabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget edit() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: AppColors.primarycolor,
        onPressed: null,
        tooltip: 'Edit',
        child: Icon(Icons.edit),
      ),
    );
  }

  Widget image() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: AppColors.primarycolor,
        onPressed: ()=> packageview(context),
        tooltip: 'Image',
        child: Icon(Icons.image),
      ),
    );
  }

  Widget inbox() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: AppColors.primarycolor,
        hoverColor: AppColors.black,
        onPressed: null,
        tooltip: 'Inbox',
        child: Icon(Icons.inbox),
      ),
    );
  }

  Widget toggle() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: _buttonColor.value,
        onPressed: animate,
        tooltip: 'Toggle',
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animateIcon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 3.0,
            0.0,
          ),
          child: edit(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 2.0,
            0.0,
          ),
          child: image(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value,
            0.0,
          ),
          child: inbox(),
        ),
        toggle(),
      ],
    );
  }
}
// void _settingModalBottomSheet(context){
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext bc){
//           return Container(
//             child: new Wrap(
//             children: <Widget>[
// new ListTile(
//             leading: new Icon(Icons.music_note),
//             title: new Text('Music'),
//             onTap: () => {}          
//           ),
//           new ListTile(
//             leading: new Icon(Icons.videocam),
//             title: new Text('Video'),
//             onTap: () => {},          
//           ),
//             ],
//           ),
//           );
//       }
//     );
// }
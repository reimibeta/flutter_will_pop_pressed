library flutter_will_pop_pressed;

import 'package:flutter/material.dart';

class FlutterWillPopPressed extends StatelessWidget {

  final Widget child;
  final Function onBackPressed;

  FlutterWillPopPressed({Key key,
    @required this.child,
    @required this.onBackPressed
  }):super(key: key);

  Future<bool> _willPopCallback(Function onBackPressed) async {
    // await showDialog or Show add banners or whatever
    // working on back pressed
    if(onBackPressed != null)
      onBackPressed();
    // then
    return true; // return true if the route to be popped
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: this.child, onWillPop:() => _willPopCallback(this.onBackPressed()));
  }

}

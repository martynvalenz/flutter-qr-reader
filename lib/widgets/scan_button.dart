import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 1  ,
      child:Icon(Icons.filter_center_focus),
      onPressed: (){},
    );
  }
}
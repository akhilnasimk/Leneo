
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.yellow,
        title: Text('this is Home page',style: TextStyle(color: Colors.black),),
      ),
    );
  }


}
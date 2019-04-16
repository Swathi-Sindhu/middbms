import 'package:flutter/material.dart';
class Agriculture extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:new AppBar(title:new Directionality(
          textDirection: TextDirection.ltr,
          child: new Text('AgricultureExpert') 
          ),
          backgroundColor:Color.fromRGBO(40, 80, 40, 0.8)
    ),
    
    );
  }
}
import 'package:flutter/material.dart';

class HomePage extends  StatelessWidget{

  int a=10;
  String aa="Rushi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Catlog App")
      ),
        body:Center(
        child:Container(
          child:Text("Welcome:$aa"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

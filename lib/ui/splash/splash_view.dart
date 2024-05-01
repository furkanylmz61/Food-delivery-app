import 'package:flutter/material.dart';

class SplashView extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
      return const Scaffold(
        body: Center(
          child: Text("Food Delivery App", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
        ),
      );
  }


}
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vikram Lander"),
      ),    
      body: Hero(
        tag: 'vikram',
        child: Image.asset(
                          'assets/vikram.png',
                           height: 300,
                          ),
      )  
    );
  }

}
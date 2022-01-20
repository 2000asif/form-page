


import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text ('Hello world'),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/636.jpg'),
            Image.asset('images/724.jpg'),
            Image.asset('images/mon.jpg'),

          ],
        ),
      ),

    ),
  ));

}


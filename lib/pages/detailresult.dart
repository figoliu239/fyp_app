import 'package:flutter/material.dart';

class DetailedResult extends StatelessWidget {// this should become stateful widget which accept a string from searchbar and receive data from database
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}


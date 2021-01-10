import 'package:flutter/material.dart';
import 'package:fyp_app/pages/detailresult.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Search')
      ),
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text('try to have a search bar here'),
          RaisedButton.icon(
            onPressed: () =>Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => DetailedResult()
              )),
            icon:Icon(Icons.search),
            label: Text("Search"),

          ),

        ],
      )

    );
  }
}
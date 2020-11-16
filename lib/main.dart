import 'package:flutter/material.dart';
import 'package:fyp_app/pages/home.dart';
import 'package:fyp_app/pages/search.dart';
import 'package:fyp_app/pages/setting.dart';
import 'package:fyp_app/pages/barcode.dart';
import 'package:fyp_app/pages/coin.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BottomNavigationController(),
      ),
    );
  }
}

class BottomNavigationController extends StatefulWidget {
  BottomNavigationController({Key key}) : super(key: key);
  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState extends State<BottomNavigationController> {
  int _currentIndex = 0;
  final List<Widget> pages = [Home(), Search(),Barcode(),Coin(),Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(
          //title: const Text('Home(unfinished)'),
        //),
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/homeicon.jpg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/searchicon.jpg'),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/barcodeicon.jpg'),// just temporary use
              label:'Barcode',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/moneyicon.jpg'),
              label:'Coin',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/settingicon.jpg'),
              label:'Settings',
            ),
          ],
          currentIndex:_currentIndex,
          fixedColor: Colors.blue,
          onTap: _onItemClick,
        )
    );
  }

  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

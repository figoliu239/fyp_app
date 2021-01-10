import 'package:flutter/material.dart';
import 'package:fyp_app/pages/home.dart';
import 'package:fyp_app/pages/search.dart';
import 'package:fyp_app/pages/setting.dart';
import 'package:fyp_app/pages/barcode.dart';
import 'package:fyp_app/pages/coin.dart';
import 'package:fyp_app/size_config.dart';
void main() {
  runApp(App());
}

class App extends StatelessWidget {
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
    SizeConfig().init(context);// this is important for using proportionatescreen function
    return Scaffold(
        //appBar: AppBar(
          //title: const Text('Home(unfinished)'),
        //),
        body: pages[_currentIndex],
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 20),
          child: SizedBox(
            height: getProportionateScreenHeight(70),
            width: getProportionateScreenWidth(70),
            child: FloatingActionButton(
              backgroundColor: Colors.transparent,
              elevation: 0,
              onPressed: () {setState(() {
                _currentIndex = 2;
              });},
              child: Container(
                height: 175,
                width: 175,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
                child: Image.asset('assets/barcodeicon.jpg',height: 50,width: 50,),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/homeicon.jpg',height: 50,width: 50,),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/searchicon.jpg',height: 50,width: 50,),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/barcodeicon.jpg',height: 50,width: 50,color: Colors.transparent,),
              label:'Barcode',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/moneyicon.jpg',height: 50,width: 50,),
              label:'Coin',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/settingicon.jpg',height: 50,width: 50,),
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

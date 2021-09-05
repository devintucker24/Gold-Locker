import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/screens/home_page/home/home.dart';
import 'package:provider/provider.dart';

import '../../authentication_service.dart';
import '../../pallet.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;
  static TextStyle optionStyle = kBodyText;
  static List<Widget> _widgetOptions = <Widget>[
    // Home Tab
    home(),
    //
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    // Settings Tab
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Clay.kClay,
      appBar: AppBar(
        title: const Text('Gold Locker'),
        titleTextStyle: kHeadings.copyWith(fontWeight: FontWeight.bold),
        backgroundColor: Colors.grey.shade900.withOpacity(.7),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  context.read<AuthenticationService>().signOut();
                },
                child: Icon(
                  FontAwesomeIcons.signOutAlt,
                  size: 26.0,
                  color: Gold.kGold,
                ),
              )),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey.shade900.withOpacity(.8),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_sharp),
            label: 'Business',
            backgroundColor: Colors.grey.shade900,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.searchDollar),
            label: 'School',
            backgroundColor: Colors.grey.shade900,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.grey.shade900,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Gold.kGold,
        unselectedItemColor: Gold.kGold.shade800,
        onTap: _onItemTapped,
      ),
    );
  }
}

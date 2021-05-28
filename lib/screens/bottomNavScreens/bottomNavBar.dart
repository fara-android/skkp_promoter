import 'package:flutter/material.dart';
import 'package:ssp_prom/customs/colors.dart';
import 'package:ssp_prom/screens/bottomNavScreens/controllBottomNavScreen.dart';
import 'package:ssp_prom/screens/bottomNavScreens/mainBottomNavScreen.dart';
import 'package:ssp_prom/screens/bottomNavScreens/settingsBottomNavScreen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
 int _currentIndex = 0;
  final List<StatefulWidget> tabs =[
    
    MainBottomNavScreen(),
    ControllBottomScreen(),
    SettingsBottomNavScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: promoGreenMain,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Главная",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Управление",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Настройки"),
          ]),
    );
  }
}

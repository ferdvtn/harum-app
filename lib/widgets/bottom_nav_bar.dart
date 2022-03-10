import 'package:flutter/material.dart';
import 'package:harum_app/constants/color_constant.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  final _bottomNavBarRadius = const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: _bottomNavBarRadius,
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 15,
            offset: Offset(0, 8),
            spreadRadius: 1,
            blurStyle: BlurStyle.normal,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: _bottomNavBarRadius,
        child: BottomNavigationBar(
            backgroundColor: iFillColor,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: iRedColor,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home_outlined),
              ),
              BottomNavigationBarItem(
                label: 'History',
                icon: Icon(Icons.playlist_add_check),
              ),
            ]),
      ),
    );
  }
}

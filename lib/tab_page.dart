import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // 하단 바텀 바 클릭시 적용할 함수
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    List _pages = [Text("home"), Text("search"), Text("user")];

    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("search")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("Account")),
          ]),
    );
  }
}

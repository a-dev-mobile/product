import 'package:flutter/material.dart';
import 'package:product/feature/search/search.dart';
import 'package:product/feature/setting/setting_tab.dart';
import 'package:product/l10n/l10n.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({
    super.key,
  });
  static const path = '/bottom-nav-page';
  static const name = 'bottom-nav-page';

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    SearchPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            label: l.main,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: l.setting,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

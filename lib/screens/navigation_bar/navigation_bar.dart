import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/screens/user/user_detail.dart';

import '../bar_char_test.dart';
import '../home_screen/home.dart';


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  late List<Map<String, Widget>> _pages;
  @override
  void initState(){
    _pages =[
      {
        'page' : const Home()
      },
      {
        'page' : const BarChartSample7()
      },
      {
        'page' : const UserDetail()
      }
    ];
    super.initState();
  }

  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _pages[currentIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              tooltip: 'Home',
              label: 'Home',
              //backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart),
                tooltip: 'Chart',
                label: 'Chart'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                tooltip: 'User',
                label: 'User'
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:task_flow/features/home_screen/presentation/pages/tabs/calendar_tab.dart';
import 'package:task_flow/features/home_screen/presentation/pages/tabs/focus_tab.dart';
import 'package:task_flow/features/home_screen/presentation/pages/tabs/index_tab.dart';
import 'package:task_flow/features/home_screen/presentation/pages/tabs/profile_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;

  final pages = [
    const IndexTab(),
    const CalendarTab(),
    const FocusTab(),
    const ProfileTab(),
  ];

  final pagesName = [
    'Index',
    'Calendar',
    'Focus',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(pagesName[_currentPageIndex])),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(
            icon: const Icon(Icons.sort_outlined),
            onPressed: () {},
          ),
        ),
      ),
      body: pages[_currentPageIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPageIndex,
          backgroundColor: const Color(0xFF363636),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Index',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              activeIcon: Icon(Icons.calendar_month),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              activeIcon: Icon(Icons.access_time_filled),
              label: 'Focus',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          }),
    );
  }
}

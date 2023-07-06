import 'package:flutter/material.dart';
import 'package:taskassigned/screens/AuthScreen/login_screen.dart';
import 'package:taskassigned/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List<Widget> tabs = [
    const LoginScreen(),
    const LoginScreen(),
    const ProfileScreen(),
    const LoginScreen(),
    const LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _currentIndex = 3;
              });
            },
            backgroundColor: Colors.white70,
            shape: const CircleBorder(),
            elevation: 4,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.photo_camera_outlined,
                  size: 30,
                ),
                Text(
                  'Try on',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomAppBar(
          elevation: 3,
          height: 65,
          notchMargin: 6,
          padding: const EdgeInsets.all(0),
          clipBehavior: Clip.antiAlias,
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.orange,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 28,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category_outlined,
                    size: 28,
                  ),
                  label: 'Categories'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.location_on,
                    size: 28,
                  ),
                  label: 'Nearby'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_pin,
                    size: 28,
                  ),
                  label: 'Profile'),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
      // bottomNavigationBar:
      //
    );
  }
}

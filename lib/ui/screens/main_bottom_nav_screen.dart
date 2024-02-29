import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/canceled_task_screen.dart';
import 'package:task_manager/ui/screens/complete_task_screen.dart';
import 'package:task_manager/ui/screens/new_task_screen.dart';
import 'package:task_manager/ui/screens/progress_task_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    NewTaskScreens(),
    ProgressTaskScreen(),
    CompleteTaskScreen(),
    CanceledTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          setState(() {

          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'NEW'),
          BottomNavigationBarItem(icon: Icon(Icons.change_circle_outlined), label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Complete'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel), label: 'Canceled'),
        ],
      ),
    );
  }
}

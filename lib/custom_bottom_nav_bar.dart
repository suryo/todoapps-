import 'package:flutter/material.dart';
import 'home.dart';
import 'tentangkami.dart';
import 'list_todo_page.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.deepOrange,
      type: BottomNavigationBarType.fixed, // Ensures labels are always shown
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_rounded),
          label: 'ToDo',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.insert_drive_file),
        //   label: 'PAPI',
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.analytics),
        //   label: 'RIASEC',
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: 'Logout',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white, // Color for selected items
      unselectedItemColor: Colors.white70,    // Default color for unselected icons and labels
      onTap: onItemTapped,
    );
  }
}

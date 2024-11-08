import 'package:flutter/material.dart';
import 'tentangkami.dart';
import 'list_todo_page.dart';
import 'add_todo_page.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(0)),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('List Todo'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListTodoPage(data: 'test'),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Add Todo'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTodoPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Go to Tentang Kami'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Tentangkami(data: 'Hello from Tentang Kami'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

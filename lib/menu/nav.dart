import 'package:flutter/material.dart';
import 'package:test_flutter_1/main.dart';
import 'package:test_flutter_1/page/form.dart';

import '../page/to_do_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.currentPage});

  final String? currentPage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // Route menu ke halaman utama
              if (currentPage == 'HOME') {
                Navigator.pop(context);
              } else {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }

            },
          ),
          ListTile(
            title: const Text('Form'),
            onTap: () {
              // Route menu ke halaman form
              if (currentPage == 'FORM') {
                Navigator.pop(context);
              } else {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
               );
              }

            },
          ),
          ListTile(
            title: const Text('To Do'),
            onTap: () {
              // Route menu ke halaman to do
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ToDoPage()),
              );
            },
          ),
        ],
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:hive_example/pages/student.dart';
import 'home_page.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  int index = 0;
  final pages = [
    HomePage(),
    Studentpage(),
    Studentpage(),
    Studentpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "student"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "teacher"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "bank"),
        ],
      ),
    );
  }
}

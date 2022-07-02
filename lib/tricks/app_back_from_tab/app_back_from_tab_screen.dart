import 'package:flutter/material.dart';

class AppBackFromTabScreen extends StatefulWidget {
  const AppBackFromTabScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBackFromTabScreen> createState() => _AppBackFromTabScreenState();
}

class _AppBackFromTabScreenState extends State<AppBackFromTabScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (currentIndex != 0) {
          currentIndex = 0;
          setState(() {});
          return Future.value(false);
        }
        return Future.value(true);

      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BottomNavigationBar Demo'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 20,
          selectedIconTheme: const IconThemeData(color: Colors.amberAccent, size: 40),
          selectedItemColor: Colors.amberAccent,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          currentIndex: currentIndex,
          onTap: (int index) {
            currentIndex = index;
            setState(() {});
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
          ],
        ),
      ),
    );
  }
}

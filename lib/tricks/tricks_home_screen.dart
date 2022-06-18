import 'package:flutter/material.dart';
import 'package:flutter_useful_simple_tricks/tricks/dropdown/dropdown_trick_screen.dart';

class TricksHomeScreen extends StatefulWidget {
  const TricksHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TricksHomeScreen> createState() => _TricksHomeScreenState();
}

class _TricksHomeScreenState extends State<TricksHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tricks'),
        ),
        body: ListView(
          children:  [
            TricksListTile(
              title: 'Dropdown list',
              subtitle:
                'we will try to explore one of the best possible way to work with dropdown list',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DropDownTrickScreen()),
                );
              },

            )
          ],
        ));
  }
}


class TricksListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onPressed;
  const TricksListTile({Key? key, required this.subtitle, required this.title, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}


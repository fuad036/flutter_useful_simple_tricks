import 'package:flutter/material.dart';
import 'package:flutter_useful_simple_tricks/tricks/dropdown/custom_dropdown.dart';
import 'package:flutter_useful_simple_tricks/tricks/dropdown/models.dart';

class DropDownTrickScreen extends StatefulWidget {
  const DropDownTrickScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DropDownTrickScreen> createState() => _DropDownTrickScreenState();
}

class _DropDownTrickScreenState extends State<DropDownTrickScreen> {
  List<Fruit> fruits = [
    Fruit(fruitName: 'orange'),
    Fruit(fruitName: 'banana'),
    Fruit(fruitName: 'apple'),
  ];

  List<EmployeeCategory> employeeCategories = [
    EmployeeCategory(
        categoryName: 'programmers',
        categoryId: 0,
        description: 'hello programmers'),
    EmployeeCategory(
        categoryName: 'Designers',
        categoryId: 1,
        description: 'hello designers'),
    EmployeeCategory(
        categoryName: 'Testers', categoryId: 2, description: 'hello testers'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dropdown trick'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              CustomDropdown<Fruit>(
                  items: fruits,
                  onChanged: (Fruit value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${value.fruitName} is selected")));
                  }),
              const SizedBox(
                height: 20,
              ),
              CustomDropdown<EmployeeCategory>(
                  items: employeeCategories,
                  onChanged: (EmployeeCategory value) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "${value.categoryName} is selected which id is ${value.categoryId}")));
                  }),
            ],
          ),
        ));
  }
}

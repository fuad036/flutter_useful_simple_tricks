import 'package:flutter/material.dart';

import 'custom_dropdown.dart';

class Fruit implements BaseDropdown {
  String fruitName;

  Fruit({required this.fruitName});

  @override
  String dropdownItemText() {
    return fruitName;
  }
}

class EmployeeCategory implements BaseDropdown {
  String categoryName;
  int categoryId;
  String? description;

  EmployeeCategory({
    required this.categoryName,
    required this.categoryId,
    this.description,
  });

  @override
  String dropdownItemText() {
    return categoryName;
  }
}

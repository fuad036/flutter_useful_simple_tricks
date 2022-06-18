import 'package:flutter/material.dart';

abstract class BaseDropdown {
  String dropdownItemText();
}

class CustomDropdown<T extends BaseDropdown> extends StatefulWidget {
  const CustomDropdown({
    Key? key,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  final List<T> items;

  final Function(T value) onChanged;

  @override
  _CustomDropdownState<T> createState() => _CustomDropdownState();
}

class _CustomDropdownState<T extends BaseDropdown>
    extends State<CustomDropdown<T>> {

  T? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  _buildBody() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<T>(
        hint: const Text('please select'),
        value: _selectedValue,
        onChanged: (T? newValue) {
          setState(() {
            _selectedValue = newValue;
            widget.onChanged(newValue!);
          });
        },
        items: widget.items.map((T f) {
          return DropdownMenuItem<T>(
            value: f,
            child: Text(f.dropdownItemText()),
          );
        }).toList(),
      ),
    );
  }
}




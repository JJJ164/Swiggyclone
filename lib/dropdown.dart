import 'package:flutter/material.dart';
import 'package:swiggy/reg.dart';
  String dropdownValue = list.first;
class DropdownButtons extends StatefulWidget {
  const DropdownButtons({super.key});

  @override
  State<DropdownButtons> createState() => _DropdownButtonsState();
}

class _DropdownButtonsState extends State<DropdownButtons> {


  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black54),
      underline: Container(
        height: 1,
        color: Colors.black54,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

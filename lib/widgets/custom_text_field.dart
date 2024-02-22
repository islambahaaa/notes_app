import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.maxlines = 1, required this.hint});
  final int maxlines;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(),
      ),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: kPrimaryColor),
    );
  }
}

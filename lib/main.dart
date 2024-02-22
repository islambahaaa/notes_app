import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _baseTheme,
      home: const NotesView(),
    );
  }
}

ThemeData _baseTheme = ThemeData(
    primaryColor: kPrimaryColor,
    brightness: Brightness.dark,
    fontFamily: "jost",
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Color(0xff141414)));

import 'package:flutter/material.dart';

import 'package:notes_app/constants.dart';

void showSnackBar(
  BuildContext context, {
  required String message,
  required IconData icon,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    content: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          border: Border.all(color: kPrimaryColor, width: 3),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              spreadRadius: 2.0,
              blurRadius: 8.0,
              offset: Offset(2, 4),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(message, style: const TextStyle(color: Colors.white)),
            ),
          ],
        )),
  ));
}

import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8)),
      child: IconButton(
        onPressed: onPressed,
        icon: Center(
          child: Icon(
            icon,
            size: 25,
          ),
        ),
      ),
    );
  }
}

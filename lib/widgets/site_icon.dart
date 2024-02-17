import 'package:flutter/material.dart';

class Sitelogo extends StatelessWidget {
  const Sitelogo({super.key, required this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "NA",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Color(0xff28b67e)),
      ),
    );
  }
}

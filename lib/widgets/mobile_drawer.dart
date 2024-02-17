import 'package:flutter/material.dart';
import 'package:project2/constants/nav_item.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF131933),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Color(0xff28b67e),
                  )),
            ),
          ),
          for (int i = 0; i < nav_icon.length; i++)
            ListTile(
                leading: Icon(
                  nav_icon[i],
                  color: Color(0xff28b67e),
                ),
                title: Text(
                  item[i],
                  style: TextStyle(
                    color: Color(0xff28b67e),
                  ),
                ))
        ],
      ),
    );
  }
}

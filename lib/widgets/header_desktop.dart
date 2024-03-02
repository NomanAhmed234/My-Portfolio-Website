import 'package:flutter/material.dart';
import 'package:project2/constants/nav_item.dart';
import 'package:project2/widgets/site_icon.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF131933),
            Color.fromARGB(255, 7, 11, 28),
          ],
        ),
      ),
      height: 60,
      width: double.maxFinite,
      child: Row(
        children: [
          Sitelogo(onTap: () {}),
          Spacer(),
          for (int i = 0; i < item.length; i++)
            TextButton(
                onPressed: () {},
                child: Text(
                  item[i],
                  style: TextStyle(
                      color: Color(0xff28b67e),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )),
          SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}

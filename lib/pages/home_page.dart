import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project2/constants/nav_item.dart';
import 'package:project2/constants/size.dart';
import 'package:project2/widgets/header_desktop.dart';
import 'package:project2/widgets/header_mobile.dart';
import 'package:project2/widgets/mobile_drawer.dart';
import 'package:project2/widgets/site_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//0xFF131933 dark blue
// 0xFF1D4C4F dark green
// 28b67e light green
// new dark blue 023246
class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      return Scaffold(
        key: ScaffoldKey,
        endDrawer: MobileDrawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (Constraints.maxWidth >= sizeOfScreen)
              HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  ScaffoldKey.currentState?.openEndDrawer();
                },
              ),
            const Divider(
              color: Color(0xff28b67e), // Customize the color of the divider
              thickness: 1.0, // Customize the thickness of the divider
              height: 1.0, // Customize the height of the divider
            ),
            Container(
              color: const Color(0xFF131933),
              height: 700,
              width: double.maxFinite,
            ),
          ],
        ),
      );
    });
  }
}

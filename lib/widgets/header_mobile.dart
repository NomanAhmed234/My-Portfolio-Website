import 'package:flutter/material.dart';
import 'package:project2/widgets/site_icon.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF131933),
      height: 50,
      child: Row(children: [
        Sitelogo(onTap: onLogoTap),
        Spacer(),
        IconButton(
            onPressed: onMenuTap,
            icon: Icon(
              Icons.menu,
              color: Color(0xff28b67e),
            )),
        SizedBox(
          width: 15,
        )
      ]),
    );
  }
}

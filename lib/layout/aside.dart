import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Aside extends StatelessWidget {
  const Aside({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // enable scrolling
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                child: SvgPicture.asset('assets/icons/logo.svg'),
              ),
              // child: Container(
              //   padding: EdgeInsets.all(0),
              //   child: Image.asset('assets/images/logo.png'),
              // ),
            ),
            DrawerListTitle(
              title: "Dashboard",
              svgSrc: "assets/icons/dashboard.svg",
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            DrawerListTitle(
              title: "About",
              svgSrc: "assets/icons/dashboard.svg",
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.onTap,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        height: 16,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}

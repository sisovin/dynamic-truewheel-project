import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;

  CustomAppBar({required this.title, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: actions,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                if (constraints.biggest.height > 56)
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MobileMenu extends StatelessWidget {
  final List<Widget> menuItems;

  MobileMenu({required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: menuItems,
      ),
    );
  }
}

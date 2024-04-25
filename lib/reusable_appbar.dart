import 'package:flutter/material.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function toggleTheme;

  const ReusableAppBar(
      {Key? key, required this.title, required this.toggleTheme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      // Add other actions or customizations here
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.brightness_6),
          onPressed: () => toggleTheme(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

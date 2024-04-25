import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample1/providers/theme_provider.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ReusableAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      // Add other actions or customizations here
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.brightness_6),
          onPressed: () =>
              Provider.of<ThemeNotifier>(context, listen: false).toggleTheme(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

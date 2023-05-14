import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isLeading;
  final bool isAction;
  final VoidCallback? onLeadingTap;
  final VoidCallback? onActionTap;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.isLeading = false,
    this.isAction = false,
    required this.onLeadingTap,
    required this.onActionTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: isLeading
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onLeadingTap,
            )
          : null,
      actions: isAction
          ? <Widget>[
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: onActionTap,
              )
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
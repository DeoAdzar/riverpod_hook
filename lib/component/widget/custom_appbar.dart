import 'package:flutter/material.dart';
import 'package:konseling/gen/colors.gen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  AppBarCustom(
      {super.key,
      this.isActionButton = false,
      this.icon,
      this.onTap,
      this.leadingBack = true,
      this.leading,
      this.child,
      this.centerTitle});

  final AppBar appBar = AppBar();
  final bool? isActionButton;
  final Widget? child;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool? centerTitle;
  final Widget? leading;
  final bool leadingBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: leadingBack,
      leading: leading,
      centerTitle: centerTitle,
      iconTheme: const IconThemeData(),
      elevation: 8,
      shadowColor: Theme.of(context).brightness == Brightness.dark
          ? MyColors.white.withOpacity(.08)
          : MyColors.black.withOpacity(.08),
      actions: isActionButton == true
          ? <Widget>[
              if (icon != null && onTap != null) ...[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ZoomTapAnimation(
                    onTap: onTap,
                    child: Icon(
                      icon,
                      size: 24,
                    ),
                  ),
                )
              ],
              if (child != null) ...[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  padding: const EdgeInsets.only(right: 20),
                  child: child!,
                ),
              ]
            ]
          : const [],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}

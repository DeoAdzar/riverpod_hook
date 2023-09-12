import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konseling/component/utils/text_style.dart';
import 'package:konseling/gen/colors.gen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key,
    required this.onTap,
    this.borderRadius,
    this.padding,
    required this.color,
    this.borderColor,
    required this.text,
    this.textStyle,
    this.icon,
    this.leadingIcon,
    this.sizeIcon,
    this.colorIcon,
  });

  final VoidCallback onTap;
  final double? borderRadius;
  final EdgeInsets? padding;
  final Color color;
  final Color? borderColor;
  final String text;
  final TextStyle? textStyle;
  final IconData? icon;
  final IconData? leadingIcon;
  final double? sizeIcon;
  final Color? colorIcon;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          border:
              Border.all(width: 1, color: borderColor ?? Colors.transparent),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (leadingIcon != null) ...[
              Icon(
                leadingIcon,
                size: sizeIcon ?? 14,
                color: colorIcon ?? MyColors.white,
              ),
              8.horizontalSpace,
            ],
            Flexible(
              child: Text(
                text,
                style:
                    textStyle ?? bodyLgSemiBold.copyWith(color: MyColors.white),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
            ),
            if (icon != null) ...[
              8.horizontalSpace,
              Icon(
                icon,
                size: sizeIcon ?? 14,
                color: colorIcon ?? MyColors.white,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

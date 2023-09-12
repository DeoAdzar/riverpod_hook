import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konseling/component/utils/text_style.dart';

import '../../gen/colors.gen.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    required this.controller,
    this.isActive = true,
    this.titleText,
    this.textStyle,
    this.textInputType,
    this.textInputAction,
    this.inputFormatter,
    this.maxLines = 1,
    this.maxLength = 32,
    required this.hintText,
    this.hintTextStyle,
    required this.validator,
    this.isUsingValidator = true,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final bool? isActive;
  final TextStyle? textStyle;
  final String? titleText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLines;
  final int? maxLength;
  final String hintText;
  final TextStyle? hintTextStyle;
  final String validator;
  final bool? isUsingValidator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (titleText != null) ...[
          Text(titleText!, style: headingSm),
          4.verticalSpace,
        ],
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          autofocus: false,
          enabled: isActive,
          style: textStyle ?? headingSm.copyWith(color: MyColors.grey700),
          keyboardType: textInputType ?? TextInputType.text,
          textInputAction: textInputAction ?? TextInputAction.done,
          inputFormatters: inputFormatter,
          maxLines: maxLines,
          maxLength: maxLength,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          validator: (value) {
            if (isUsingValidator == true) {
              if (value!.isEmpty) {
                return validator;
              }
              return null;
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            hintText: hintText,
            filled: true,
            fillColor: MyColors.white,
            hintStyle:
                hintTextStyle ?? headingSm.copyWith(color: MyColors.grey500),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 1, color: MyColors.grey300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 1, color: MyColors.grey300),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 1, color: MyColors.error),
            ),
          ),
        ),
      ],
    );
  }
}

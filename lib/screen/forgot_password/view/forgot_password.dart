import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konseling/component/utils/input_form.dart';
import 'package:konseling/component/utils/text_style.dart';
import 'package:konseling/component/widget/button_custom.dart';
import 'package:konseling/component/widget/custom_appbar.dart';
import 'package:konseling/gen/colors.gen.dart';

// ignore: must_be_immutable
class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: MyColors.grey500,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.verticalSpace,
              Text(
                "Lupa Password",
                style: headingLgBold.copyWith(fontWeight: FontWeight.w700),
              ),
              10.verticalSpace,
              Text(
                "Masukan emial pengganti dibawah untuk merubah password lama mu",
                style: bodyLgSemiBold.copyWith(
                  color: MyColors.grey500,
                ),
              ),
              50.verticalSpace,
              InputForm(
                  controller: controller,
                  titleText: "Email",
                  hintText: "Masukkan Email anda",
                  maxLength: null,
                  validator: "Validator"),
              20.verticalSpace,
              ButtonCustom(
                  onTap: () {},
                  color: MyColors.primary300,
                  text: "Kirim Email"),
            ],
          ),
        ),
      )),
    );
  }
}

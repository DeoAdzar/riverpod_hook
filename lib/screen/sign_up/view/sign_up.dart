import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:konseling/component/utils/app_route.dart';
import 'package:konseling/component/utils/input_form.dart';
import 'package:konseling/component/utils/text_style.dart';
import 'package:konseling/component/widget/button_custom.dart';
import 'package:konseling/component/widget/custom_appbar.dart';
import 'package:konseling/gen/colors.gen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                  "Daftar",
                  style: headingLgBold.copyWith(fontWeight: FontWeight.w700),
                ),
                10.verticalSpace,
                Row(
                  children: [
                    Text(
                      "Sudah Punya Akun ? ",
                      style: bodyLgSemiBold.copyWith(
                        color: MyColors.grey500,
                      ),
                    ),
                    ZoomTapAnimation(
                      onTap: () {
                        context.pushNamed(AppRoute.signIn);
                      },
                      child: Text(
                        "Masuk",
                        style:
                            bodyLgSemiBold.copyWith(color: MyColors.primary300),
                      ),
                    ),
                  ],
                ),
                25.verticalSpace,
                InputForm(
                    controller: emailController,
                    titleText: "Email",
                    hintText: "Masukkan Email anda",
                    maxLength: null,
                    validator: "Validator"),
                15.verticalSpace,
                InputForm(
                    controller: emailController,
                    titleText: "NISN",
                    hintText: "Masukkan NISN anda",
                    maxLength: null,
                    validator: "Validator"),
                15.verticalSpace,
                InputForm(
                    controller: passwordController,
                    obscureText: true,
                    titleText: "Password",
                    hintText: "Masukkan Password anda",
                    maxLength: null,
                    validator: "Validator"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: ButtonCustom(
                      onTap: () {}, color: MyColors.primary300, text: "Daftar"),
                ),
                150.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "By clicking sign up you are agreeing to the ",
                      style: const TextStyle(
                        color: MyColors.grey500,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Term of use',
                          style: bodyLgSemiBold.copyWith(
                              color: Colors.blue.shade500, fontSize: 14),
                        ),
                        TextSpan(
                          text: ' and the ',
                          style: bodyLgSemiBold.copyWith(
                              color: MyColors.grey500, fontSize: 14),
                        ),
                        TextSpan(
                          text: 'Privacy policy',
                          style: bodyLgSemiBold.copyWith(
                              color: Colors.blue.shade500, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

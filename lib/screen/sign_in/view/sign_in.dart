import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:konseling/component/provider/app_theme_provider.dart';
import 'package:konseling/component/utils/app_route.dart';
import 'package:konseling/component/utils/input_form.dart';
import 'package:konseling/component/utils/text_style.dart';
import 'package:konseling/component/widget/button_custom.dart';
import 'package:konseling/component/widget/custom_appbar.dart';
import 'package:konseling/gen/assets.gen.dart';
import 'package:konseling/gen/colors.gen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class SignIn extends ConsumerWidget {
  SignIn({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBarCustom(
        leadingBack: false,
        isActionButton: true,
        child: ZoomTapAnimation(
            onTap: () => ref.read(darkModeProvider.notifier).toggle(),
            child: ref.watch(darkModeProvider)
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            50.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: Assets.images.logoKoinstar3.image(width: 65, height: 65),
            ),
            8.verticalSpace,
            Text(
              "Selamat Datang Kembali",
              style: headingSmSemiBold.copyWith(fontWeight: FontWeight.w700),
            ),
            90.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InputForm(
                  controller: emailController,
                  titleText: "Email/NISN",
                  hintText: "Masukkan Email / NISN anda",
                  maxLength: null,
                  validator: "Validator"),
            ),
            15.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InputForm(
                  controller: passwordController,
                  obscureText: true,
                  titleText: "Password",
                  hintText: "Masukkan Password anda",
                  maxLength: null,
                  validator: "Validator"),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ButtonCustom(
                  onTap: () {}, color: MyColors.primary300, text: "Masuk"),
            ),
            ZoomTapAnimation(
              onTap: () {
                context.pushNamed(AppRoute.forgotPassword);
              },
              child: Text(
                "Lupa Password?",
                style: bodyLgSemiBold.copyWith(color: MyColors.grey500),
              ),
            ),
            100.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum Punya Akun ? ",
                  style: bodyLgSemiBold.copyWith(
                    color: MyColors.grey500,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    context.pushNamed(AppRoute.signUp);
                  },
                  child: Text(
                    "Daftar",
                    style: bodyLgSemiBold.copyWith(color: Colors.blue.shade500),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:konseling/component/utils/app_route.dart';
import 'package:konseling/component/utils/text_style.dart';
import 'package:konseling/component/widget/button_custom.dart';
import 'package:konseling/gen/assets.gen.dart';
import 'package:konseling/gen/colors.gen.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary100,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            200.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.logotutwuri.image(width: 113, height: 113),
                30.horizontalSpace,
                Assets.images.logokotamadiun.image(width: 113, height: 133),
              ],
            ),
            50.verticalSpace,
            Text(
              "Konsultasikan",
              style: headingLgBold.copyWith(color: MyColors.white),
            ),
            15.verticalSpace,
            Text(
              "Sekarang lebih mudah mengutarakan emosi mu dengan genggaman tangan",
              style: bodyLgSemiBold.copyWith(color: MyColors.white),
              textAlign: TextAlign.center,
            ),
            50.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: ButtonCustom(
                  onTap: () {
                    context.pushNamed(AppRoute.signIn);
                  },
                  color: MyColors.primary300,
                  text: "Mulai"),
            ),
          ],
        ),
      )),
    );
  }
}

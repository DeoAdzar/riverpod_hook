import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:konseling/component/utils/app_route.dart';
import 'package:konseling/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2500),
        () => context.pushReplacementNamed(AppRoute.introduction));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Assets.images.logokoinstar.image()),
    );
  }
}

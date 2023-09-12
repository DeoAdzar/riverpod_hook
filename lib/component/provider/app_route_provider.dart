import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:konseling/component/utils/app_route.dart';
import 'package:konseling/component/widget/error_page.dart';
import 'package:konseling/screen/forgot_password/view/forgot_password.dart';
import 'package:konseling/screen/introduction/view/introduction.dart';
import 'package:konseling/screen/sign_in/view/sign_in.dart';
import 'package:konseling/screen/sign_up/view/sign_up.dart';
import 'package:konseling/screen/splash_screen/view/splash_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier();

  return GoRouter(
    debugLogDiagnostics: true,
    routes: router._route,
    initialLocation: AppRoute.splashScreen,
    errorBuilder: (context, state) => const ErrorPage(),
  );
});

class RouterNotifier extends ChangeNotifier {
  List<GoRoute> get _route => [
        GoRoute(
          path: AppRoute.splashScreen,
          name: AppRoute.splashScreen,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: AppRoute.introduction,
          name: AppRoute.introduction,
          builder: (context, state) => const Introduction(),
        ),
        GoRoute(
          path: AppRoute.signIn,
          name: AppRoute.signIn,
          builder: (context, state) => SignIn(),
        ),
        GoRoute(
          path: AppRoute.signUp,
          name: AppRoute.signUp,
          builder: (context, state) => const SignUp(),
        ),
        GoRoute(
          path: AppRoute.forgotPassword,
          name: AppRoute.forgotPassword,
          builder: (context, state) =>  ForgotPassword(),
        ),
      ];
}

// CustomTransitionPage buildPageWithDefaultTransition<T>({
//   required BuildContext context,
//   required GoRouterState state,
//   required Widget child,
//   final Duration? duration,
//   final int? typeAnimation,
// }) {
//   return CustomTransitionPage<T>(
//       key: state.pageKey,
//       child: child,
//       transitionDuration: duration ?? const Duration(seconds: 2),
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         switch (typeAnimation) {
//           case 1:
//             return SlideTransition(
//               position: animation.drive(
//                 Tween(
//                   begin: const Offset(1.5, 0),
//                   end: Offset.zero,
//                 ).chain(
//                   CurveTween(curve: Curves.ease),
//                 ),
//               ),
//               child: child,
//             );
//           case 2:
//             return FadeTransition(
//               opacity: CurveTween(curve: Curves.ease).animate(animation),
//               child: child,
//             );
//           case 3:
//             return RotationTransition(turns: animation, child: child);
//           case 4:
//             return SizeTransition(sizeFactor: animation, child: child);
//           case 5:
//             return ScaleTransition(scale: animation, child: child);
//           default:
//             return FadeTransition(opacity: animation, child: child);
//         }
//       });
// }

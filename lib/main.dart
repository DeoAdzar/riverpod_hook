import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:konseling/component/provider/app_route_provider.dart';
import 'package:konseling/component/provider/app_theme_provider.dart';
import 'package:konseling/component/utils/theme_mode.dart';
import 'package:konseling/global.dart';

Future<void> main() async {
  await Global.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    final appRouter = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: 'Konseling',
       theme: Themes.lightTheme,
          themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
          darkTheme: Themes.darkTheme,
          debugShowCheckedModeBanner: false,
          builder: EasyLoading.init(),
      ),
    );
  }
}

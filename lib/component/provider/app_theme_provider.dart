import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:konseling/global.dart';


class DarkModeNotifier extends StateNotifier<bool> {
  DarkModeNotifier() : super(false) {
    _init();
  }

  Future _init() async {
    final darkMode = Global.storageService.getBool("in");
    state = darkMode;
  }

  void toggle() async {
    state = !state;
    Global.storageService.setBool("in", state);
  }
}

final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>(
  (ref) => DarkModeNotifier(),
);



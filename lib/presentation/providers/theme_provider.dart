import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);
final isDarModeProvider = StateProvider<bool>((ref) => true);
final selectedColorProvider = StateProvider<int>((ref) => 0);

// objeto de tipo apptheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, Apptheme>(
  (ref) => ThemeNotifier(),
);

// controller o notifier
class ThemeNotifier extends StateNotifier<Apptheme> {
  // State = new AppTheme()
  ThemeNotifier() : super(Apptheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}

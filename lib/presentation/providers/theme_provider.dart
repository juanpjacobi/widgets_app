import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);
final isDarModeProvider = StateProvider<bool>((ref) => true);
final selectedColorProvider = StateProvider<int>((ref) => 0);

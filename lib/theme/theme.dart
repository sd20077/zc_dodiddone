import 'package:flutter/material.dart';

class DodiddoneTheme {
  static ThemeData lightTheme = ThemeData(
    // Используем два основных цвета
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF9f7bf6), // Основной цвет #9f7bf6
      brightness: Brightness.light,
      primary: Color(0xFF9f7bf6), // Основной цвет #9f7bf6
      secondary: Color(0xFF4ceb8b), // Вторичный цвет #4ceb8b
    ),
    useMaterial3: true,
    // Добавляем стиль для кнопок
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: const WidgetStatePropertyAll<Color>(Colors.white),
        textStyle: WidgetStateProperty.all(
          const TextStyle(color: Colors.white), // Устанавливаем белый цвет текста
        ),
      ),
    ),
  );
}

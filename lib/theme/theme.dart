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
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xFF4ceb8b)),
        foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
        textStyle: MaterialStateProperty.all(
          const TextStyle(color: Colors.white), // Устанавливаем белый цвет текста
        ),
      ),
    ),
         bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      
      selectedItemColor: Color(0xFF9f7bf6), // Основной цвет для выбранных иконок
      unselectedItemColor: Color(0xFF9f7bf6).withOpacity(0.5), // Цвет для невыбранных иконок
    ),
    );
}

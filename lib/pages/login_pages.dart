import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = true; // Флаг для определения режима (вход/регистрация)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isLogin
                ? [DodiddoneTheme.lightTheme.colorScheme.secondary, DodiddoneTheme.lightTheme.colorScheme.primary]
                : [DodiddoneTheme.lightTheme.colorScheme.primary, DodiddoneTheme.lightTheme.colorScheme.secondary],
            stops: const [0.1, 0.9], // Основной цвет занимает 90%
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Добро пожаловать!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Почта',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Пароль',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Добавляем поле для повтора пароля
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Повторить пароль',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const MainPage()));
                  // Обработка входа/регистрации
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: !isLogin
                    ? DodiddoneTheme.lightTheme.colorScheme.primary
                    : DodiddoneTheme.lightTheme.colorScheme.secondary,
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(isLogin ? 'Войти' : 'Зарегистрироваться'),
              ),
              const SizedBox(height: 20),
              TextButton (
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: Text(
                  isLogin ? 'У меня еще нет аккаунта' : 'Вернуться на вход',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

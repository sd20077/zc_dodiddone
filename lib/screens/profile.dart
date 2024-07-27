import 'package:flutter/material.dart';

import '../pages/login_pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEmailVerified = false; // Флаг для проверки подтверждения почты

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Аватар
            CircleAvatar(
              radius: 50,
              backgroundImage: const AssetImage('assets/_1.png'), // Замените на URL аватара пользователя
            ),
            const SizedBox(height: 20),
            // Почта
            Text(
              'example@email.com', // Замените на почту пользователя
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            // Кнопка подтверждения почты (если не подтверждена)
            if (!isEmailVerified)
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context, 
                    builder: (context) => AlertDialog(
                      title: const Text('Подтверждение почты'),
                      content: const Text('Письмо с подтверждением отправлено на ваш адрес электронной почты.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Ок'),
                        ),
                      ],
                    ),
                  );
                  // Отправка запроса подтверждения почты
                  // ...
                },
                child: const Text('Подтвердить почту'),
              ),
            const SizedBox(height: 20),
            // Кнопка выхода из профиля
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context) {
                return const LoginPage ();
              }));
                // Выход из профиля
                // ...
              },
              child: const Text('Выйти'),
            ),
          ],
        ),
      
    );
  }
}

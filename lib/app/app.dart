import 'package:flutter/material.dart';

import '../pages/login_pages.dart';

import '../theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DodiddoneTheme.lightTheme,
      home: const LoginPage(),
    );
  }
}

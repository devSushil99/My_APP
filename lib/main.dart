import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:login_page/login_page.dart';
import 'package:login_page/providers/login_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LoginProvider())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage(), debugShowCheckedModeBanner: false);
  }
}

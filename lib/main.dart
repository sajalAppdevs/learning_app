import 'package:flutter/material.dart';
import 'package:learning_app/api_task/pages/api_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ApiHome(),
    );
  }
}

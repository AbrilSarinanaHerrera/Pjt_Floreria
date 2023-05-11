import 'package:flutter/material.dart';
import 'package:sarinana/paginas/iniciar.dart';

void main() {
  runApp(const AppFloreria());
}

class AppFloreria extends StatelessWidget {
  const AppFloreria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartedPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test2/screen.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(DateTime.now());
    return MaterialApp(
      key: Key("Screen"),
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

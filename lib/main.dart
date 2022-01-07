import 'package:flutter/material.dart';
import 'package:minecraft_calculator/widgets/numeric_keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MC Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WallBuilderPage(),
    );
  }
}

class WallBuilderPage extends StatefulWidget {
  const WallBuilderPage({Key? key}) : super(key: key);

  @override
  State<WallBuilderPage> createState() => _WallBuilderPageState();
}

class _WallBuilderPageState extends State<WallBuilderPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wall builder"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Points"),
            NumericKeyboard(),
          ],
        ),
      ),
    );
  }
}

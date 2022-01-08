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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: Text("Reset"),
                  onPressed: () {},
                ),
              ),
            ),
            PointsGrid(),
            NumericKeyboard(),
          ],
        ),
      ),
    );
  }
}

class PointsGrid extends StatelessWidget {
  static const double widthFirstCol = 100;
  static const double widthMiscCol = 70;

  const PointsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: widthFirstCol,
            ),
            Container(
              width: widthMiscCol,
              child: Text("X"),
            ),
            Container(
              width: widthMiscCol,
              child: Text("Y"),
            ),
            Container(
              width: widthMiscCol,
              child: Text("Z"),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: widthFirstCol,
              child: Text("Start"),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'X\u2081', // x_1
                ),
              ),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Y\u2081', // y_1
                ),
              ),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Z\u2081', // z_1
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: widthFirstCol,
              child: Text("End"),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'X\u2082', // x_2
                ),
              ),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Y\u2082', // y_2
                ),
              ),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Z\u2082', // z_2
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: widthFirstCol,
              child: Text("Target"),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Δ',
                ),
              ),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Δ',
                ),
              ),
            ),
            Container(
              width: widthMiscCol,
              child: TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Δ',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

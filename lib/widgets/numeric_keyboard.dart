import 'package:flutter/material.dart';

class NumericKeyboard extends StatelessWidget {
  const NumericKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("7"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("8"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("9"),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("4"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("5"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("6"),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("1"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("2"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("3"),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("-"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("0"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("OK"),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

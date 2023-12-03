import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final con = FlipCardController();
  final con1 = FlipCardController();
  final cong = GestureFlipCardController();
  final cong1 = GestureFlipCardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doce_2nd_Application"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            GestureFlipCard(
            enableController: true,
            controller: cong,
            animationDuration: const Duration(milliseconds: 800),
            axis: FlipAxis.vertical,
            frontWidget: Center(
              child: Container(
                width: 300,
                height: 400,
                child: Image.asset(
                  'image/rollrek.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            backWidget: Container(
              width: 300,
              height: 400,
              child: Image.asset(
                'image/pokemon_back.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('TOP CARD FLIP HORIZONTAL'),
              onPressed: () {
                // Flip the card programmatically
                cong.flipcard();
              },style: ElevatedButton.styleFrom(
                primary: Colors.purple
            ),
            ),
            ElevatedButton(
              child: const Text('BOTTOM CARD FLIP VERTICAL'),
              onPressed: () {
                // Flip the card programmatically
                cong1.flipcard();
              },style: ElevatedButton.styleFrom(
                primary: Colors.purple
            ),
            ),
            GestureFlipCard(
              controller: cong1,
              axis: FlipAxis.horizontal,
              enableController: true,
              animationDuration: const Duration(milliseconds: 1000),
              frontWidget: Center(
                child: Container(
                  height: 200,
                  width: 140,
                  child: Image.asset(
                    'image/cc-virtual.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              backWidget: Container(
                height: 200,
                width: 140,
                child: Image.asset(
                  'image/Visa-Classic-blue1.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('FLIP BOTH'),
              onPressed: () {
                // Flip the card programmatically
                cong1.flipcard();
                cong.flipcard();
              },style: ElevatedButton.styleFrom(
                primary: Colors.orange
            ),
            ),

          ],
        ),
      ),
    );
  }
}
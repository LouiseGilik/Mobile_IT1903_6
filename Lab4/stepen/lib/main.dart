import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stepen',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Список элементов - степень 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                margin: const  EdgeInsets.only(top: 30, bottom:30, left:25, right:25),
                child: Text('2 ^ $i = ${pow(2, i)}', style: const TextStyle(fontSize: 25)),
                ),
              const Divider(color: Colors.red, thickness: 3)  
              ],
            );
         }
        ),
    );
  }
}

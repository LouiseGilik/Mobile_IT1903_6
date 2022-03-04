import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Инкремент'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
    void _dincrementCounter() {
      setState(() {
        _counter--;
      });
    }

    void _zeroCounter() {
      setState(() {
        _counter=0;
      });
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[ 
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: _dincrementCounter,
            child: const Icon (Icons.remove),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            onPressed: _incrementCounter,
            child: const Icon (Icons.add),
          )
            ],
            ),
          TextButton(
            style: TextButton.styleFrom(primary: Colors.grey),
            onPressed: _zeroCounter,
            child: const Text('Сбросить'),
          )
          ],
        ),
      ),
    );
  }
}

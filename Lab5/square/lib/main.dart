import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Square',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Калькулятор площади'),
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
 final _formKey = GlobalKey<FormState>();
 int _width = 0;
 int _height = 0;
 int _result = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:  Form(
           key: _formKey,
           child:
           Column(
             children: [
           Row(
             children: <Widget> [
               Container (
                 padding: const EdgeInsets.all(10),
                 child: 
                 const Text('Ширина'),
               ),
               Expanded(
                 child: 
                 Container(
                   padding: const EdgeInsets.all(10.0),
                   child:
                   TextFormField(
                     keyboardType: TextInputType.number,
                     validator: (value) {
                    if (value!.isEmpty) return 'Задайте Ширину';
                    if (int.parse(value) <= 0) return 'Задайте натуральное число';
                     _width = int.parse(value);
                   })
               )),
             ]
             ),
            const SizedBox(height: 10.0), 
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                child:
                const Text('Высота'),
                ),
                Expanded (
                  child: 
                  Container(padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value)
                  {
                    if (value!.isEmpty) return 'Задайте Высоту';
                    if (int.parse(value) <= 0) return 'Задайте натуральное число';                  
                     _height = int.parse(value);
              })
                )),
              ]
            ),
            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.only(left: 60, right: 60, top: 20),
              child: 
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
              ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                setState(() {
                 _result = _width * _height; 
                 });
              }
            },
            child: 
            const Text('Вычислить')),
            
            ElevatedButton(onPressed: () 
            {
              setState(() {
                _formKey.currentState?.reset();
               _result = 0;
              });
            }, 
            child: 
            const Text('Очистить')),
                  ],
                ),
            ),

            const SizedBox(height: 50.0),
            
            Text(_result == 0 ? 'Задайте параметры' : 'S = $_width * $_height = $_result (мм2)', 
            style: const TextStyle(fontSize: 25.0),)
             ]
         ),
          
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dormitory',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
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
int _counter = 26;
bool _isButtonDisabled = false;

  void _dislike() {
    setState(() {
    _isButtonDisabled = false;
    _counter--;
  });
  }

  void _like() {
    setState(() {
      _isButtonDisabled = true;
      _counter++;
    });
  }
   void something(){}
    


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView (
children:<Widget>  [
Image.asset(
  'dom20.jpg'
  ),

  Container(
  padding: const EdgeInsets.all(1),
  margin: const  EdgeInsets.only(top: 25, bottom:10, left:25, right:25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [ 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Общежитие №20",
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w900,
        ),
        ),
        Text("Краснодар, ул. Калинина, 13",
        textAlign: TextAlign.start,
        style: TextStyle(height: 2, color: Colors.grey,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        ),
        ),
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_isButtonDisabled == false) 
             IconButton (
             icon: const Icon(Icons.favorite),
             onPressed: _like,
            color: Colors.grey,
             ),
        if (_isButtonDisabled == true) 
            IconButton (
             icon: const Icon(Icons.favorite),
             onPressed: _dislike,
            color: Colors.red,
            ),
              Text(
              '$_counter',
              style: const TextStyle(height: 2, color: Colors.grey,
              fontSize: 20,
              ),
              textAlign: TextAlign.start,
            ),
      ],
      )
    ],
    ),
  ),

Container(
  margin: const  EdgeInsets.only(top: 2, bottom:10, left:25, right:25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [ 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton (
              icon: const Icon(Icons.call, size: 30),
              onPressed: something,
              color: Colors.green,
              ),
              const Text("ПОЗВОНИТЬ",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        ),
        ),
      ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton (
              icon: const Icon(Icons.near_me, size: 30),
              onPressed: something,
              color: Colors.green,
              ),
              const Text("МАРШРУТ",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        ),
        ),
      ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton (
              icon: const Icon(Icons.share, size: 30),
              onPressed: something,
              color: Colors.green,
              ),
              const Text("ПОДЕЛИТЬСЯ",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        ),
        ),
      ],
      ),
    ],
  ),
),
Container(
margin: const  EdgeInsets.only(top: 10, bottom:10, left:25, right:25),
child:
Row(
  children:const [
Expanded(
   child: Text('Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих '
              'советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.black,
              fontSize: 15),
   ),
),
  ],
),
),
]

), 
);
  }
}

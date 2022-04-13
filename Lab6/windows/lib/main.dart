import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (BuildContext context) => const MainScreen(),
      '/second': (BuildContext context) => const SecondScreen(),
    },
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Первое окно')),
      body: Center(
        child: ElevatedButton(
          onPressed: ()async{
            var window2 = await Navigator.push<String>(context,MaterialPageRoute(builder: (context) =>  const SecondScreen(),));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('$window2'), backgroundColor: Colors.black,)
            );
          },
          child: const Text('Приступить к выбору'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  final String _yes = 'Да!';
  final String _no = 'Нет.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Второе окно')),
      body: Center(
        child:(
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.maybePop(context,_yes);
              },
              child: Text(_yes),
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.maybePop(context,_no);
              },
              child:  Text(_no),
            ),
          ],
        )
        )
      ),
    );
  }
}




import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 냐옹냐옹',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('두번째 냐옹냐옹으로'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => SecondPage()));
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 냐옹냐옹',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('첫번째 냐옹냐옹으로'),
            onPressed: (){
              Navigator.pop(context);
            }),
      ),
    );
  }
}

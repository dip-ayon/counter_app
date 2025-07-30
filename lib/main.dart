import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _actionMessage = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _actionMessage = 'You Have added 1';
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
      _actionMessage = 'You Have Reduced 1';

    });
  }
  void _multipleByTwoCounter() {
    setState(() {
      _counter = _counter * 2;
      _actionMessage = 'You Have Multiplied by 2';
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
      _actionMessage = 'Counter Reset to 0';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                _actionMessage,
                style: const TextStyle(fontSize: 15, color: Colors.black)),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

          ],
        ),
      ),



      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _multipleByTwoCounter,
            tooltip: 'Multiple By Two',
            child: const Icon(Icons.clear),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

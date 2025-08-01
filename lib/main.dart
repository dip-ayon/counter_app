import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
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
      _actionMessage = 'You have added 1';
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
        _actionMessage = 'You have Reduced 1';
      } else {
        _actionMessage = 'Counter cannot be Negative';
      }
    });
  }

  void _multipleByTwoCounter() {
    setState(() {
      _counter = _counter * 2;
      _actionMessage = 'You have Multiplied by 2';
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _actionMessage = 'Counter reset to 0';
    });
  }
  void _divideByTenCounter() {
    setState(() {
      _counter = _counter ~/ 10; // integer division
      _actionMessage = 'You have Divided by 10';
    });
  }
  void _checkOddEven() {
    setState(() {
      if (_counter % 2 == 0) {
        _actionMessage = '$_counter is Even Number';
      } else {
        _actionMessage = '$_counter is Odd Number';
      }
    });
  }

  void _checkPrime() {
    setState(() {
      if (_counter < 2) {
        _actionMessage = '$_counter is Not Prime Number';
        return;
      }
      for (int i = 2; i <= _counter ~/ 2; i++) {
        if (_counter % i == 0) {
          _actionMessage = '$_counter is Not Prime Number';
          return;
        }
      }
      _actionMessage = '$_counter is Prime Number';
    });
  }

  void _checkModulus() {
    setState(() {
      int mod = _counter % 5;
      _actionMessage = '$_counter % 5 = $mod \nRemainder will be: $mod';
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
              '$_counter',
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.green,),
            ),
            Text(
              _actionMessage,
              style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black,),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
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
                  tooltip: 'Multiply by 2',
                  child: const Center(
                    child: Text('×2', style: TextStyle(fontSize: 20,color: Colors.black,),
                      textAlign: TextAlign.center,
                    ),
                  )
                ),
                const SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: _divideByTenCounter,
                  tooltip: 'Divided by 10',
                  child: const Center(
                    child: Text('÷10', style: TextStyle(fontSize: 20,color: Colors.black,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: _resetCounter,
                  tooltip: 'Reset',
                  child: const Icon(Icons.refresh),
                ),
                const SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: _checkOddEven,
                  tooltip: 'Odd/Even Check',
                  child: const Center(
                    child: Text('Odd/Even', style: TextStyle(fontSize: 14,color: Colors.black,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                const SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: _checkPrime,
                  tooltip: 'Prime Check',
                  child: const Center(
                    child: Text('Prime?', style: TextStyle(fontSize: 16,color: Colors.black,),
                      textAlign: TextAlign.center,
                    ),
                  ),                ),
                const SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: _checkModulus,
                  tooltip: 'Modulus Check By 5',
                  child: const Center(
                    child: Text('% 5', style: TextStyle(fontSize: 20,color: Colors.black,),
                      textAlign: TextAlign.center,
                    ),
                  ),                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

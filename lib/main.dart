import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData()
      home: const SocialScreen(),
      

    );
  }
}

class  SocialScreen extends StatefulWidget {
  const  SocialScreen({super.key,});
 

  final String pagetitle = 'SOCIAL';


class Friend{
 final String name;
  final String status;
  final String game;
}
  const Friend({
     required this.name,
    required this.status,
    required this.game,
  })
  
Friend(
  final String name = "MissYouLikeCrazy";
  final String status = "Online";
  final String game = "VALORANt";
)
  Friend2(
  final String name = "MissYouLikeCrazy";
  final String status = "Online";
  final String game = "VALORANt";
)
  Friend3(
  final String name = "bread";
  final String status = "Playing";
  final String game = "VALORANt";
)
  
   Friend4(
  final String name = "The14th";
  final String status = "Playing";
  final String game = "VALORANt";
)
  

  @override
  State< SocialScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State< SocialScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
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
          
          
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

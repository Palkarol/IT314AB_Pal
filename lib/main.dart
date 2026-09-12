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
      title: 'My First Flutter Application',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 9, 46, 109),
        body: Center(
          child: SingleChildScrollView(
            
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                width: 500,
                height: 400,

                child: Card(
                  color: const Color.fromARGB(255, 164, 211, 250),
                  elevation: 12,

                  child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 110, 178, 234),
                        radius: 45,
                        backgroundImage: AssetImage(
                        "assets/images/image.png",
                        ),
                      ),

                      Text("Karol Raphael S. Pal",
                      style: TextStyle(
                        fontSize: 26,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      SizedBox(height: 10),
                      
                      Text("BSIT-3",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.w500,
                      ),
                      ),

                      SizedBox(height: 10),

                      Text("My First Flutter Application",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                      SizedBox(height: 10),

                      Text("August 31, 2026",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      SizedBox(height: 10),

                       Text("Hobby:Sleeping",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text("Age: 21",
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 10, 70, 119),
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          
                          SizedBox(width: 10),

                          Text("Birthdate: April 28, 2005",
                          style: TextStyle(
                            fontSize: 20,
                             color: const Color.fromARGB(255, 10, 70, 119),
                             fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],

                      ),

                    ],
                  ),
                ),
                ),
                
              ),
              SizedBox(height: 20),

            SizedBox(
              width: 500,
              height: 400,

              child: Card(
                color: const Color.fromARGB(255, 164, 211, 250),
                elevation: 12,

                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                     CircleAvatar(
                        backgroundColor:const Color.fromARGB(255, 110, 178, 234),
                        radius: 45,
                        backgroundImage: AssetImage(
                        "assets/images/image.png",
                        ),
                      ),

                      SizedBox(height: 10),
                       
                      Icon(
                        Icons.star,
                        size: 30,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        weight: 200,
                        opticalSize: 48,
                      ),

                      SizedBox(height: 10),

                    Text("My Favorites",
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 10, 70, 119),
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    Divider(
                      color: const Color.fromARGB(255, 10, 70, 119),
                      thickness: 2,
                      indent: 90,
                      endIndent: 90,                      
                    ),

                    SizedBox(height: 20),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text("Game:   Gossip Harbor",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                        ),
                        ),

                        SizedBox(height: 10),

                        Text("Food: chicken",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                        ),
                        ),

                        SizedBox(height: 10),

                        Text("Favorite Movie: Avengers: Inifinity War",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        

                      ],

                    ),
                  ],
                ),
                ),
              ),
            ),

              
            ],
          ),
          ),
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.


  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
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










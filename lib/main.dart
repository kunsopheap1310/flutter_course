import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//  **** Function  ****
void hello(){
  print('hello flutter');
}

int sum() {
  return 10 + 10;
}
// int sum() => 10 + 10;

String showInfo({required String name, String? gender, String address = "PP"}){
  return "Hello my name $name,gender $gender,and address $address";
}

String showInfoV2(String name){
  return "V2 => Hello my name ${name}";
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // constructor

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Call funtion
    hello();
    int resultSum = sum();
    print(resultSum);
    String infoResult = showInfo(name: 'Sopheap', gender: 'Male', address: 'Takeo');
    String infoResultV2 = showInfoV2('Sopheap');
    print(infoResult);
    print(infoResultV2);

    //  **** Dart introduction ****
    // **** variables ****

    // int a = 10;
    // double b =11.11;
    // String name  = 'Sopheap';
    //
    // late int c;
    // c =10;
    //
    // const d = 100; // const can't assign new value
    //
    // final e; // use final cannot assign new value to variable
    // e=200;
    //
    // final String newNamme = 'sorphorn';
    // newNamme = 'Sopheap';  //error

    // **** null salfty  ****
    // int? f;
    // var firsName = 'soheap';
    // firsName = "sopheak";
    //
    // var g = 10;
    // g =20;
    // g=30;
    //
    // dynamic value = 10;
    // value = 'hello flutter';

    // symbol =>      /  + , - *, / , ~/ (result integer), % (result modulo), ++ , --
    // debugPrint('return => $value');


    //  **** Control statement  ****
    // const condition = 10 < 5;
    // if (condition) {
    //   debugPrint('10 more than 5');
    // } else {
    //   debugPrint('5 less than 10');
    // }

    //  **** switch case  ****
    // String option = '';
    // switch (option) {
    //   case 'a': {
    //     debugPrint('Option a');
    //     break;
    //   }
    //   case 'b': {
    //     debugPrint('Option b');
    //     break;
    //   }
    //   default: {
    //     debugPrint('Default Option');
    //   }
    // }

    //  **** Loop  ****
    //  **** for loop  ****
    // const int max = 10;
    // for(int min = 1; min <= max; min++) {
    //   debugPrint('Hello Flutter $min');
    // }
    //
    // List<int> numbers = [1, 3, 4];
    // for (var number in numbers) {
    //   debugPrint(number.toString());
    // }

    // for (int i = 1; i < 10; i++){
    //   if(i==5 || i ==6){
    //     // break;
    //     continue;
    //   }
    //   print(i);
    // }

    //  **** foreach loop  ****
    // List lists = [1, 'b', 'c'];
    // lists.forEach((element) {
    //   debugPrint(element.toString());
    // });

    //  **** while loop  ****
    // int countdown = 5;
    // while(countdown > 0) {
    //   print(countdown);
    //   countdown--;
    // }

    //  **** do-while loop  ****
    // int i = 10;
    // do {
    //   print(i);
    // } while (i<5);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

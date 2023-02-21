import 'package:fluid_action_card/FluidActionCard/fluid_action_card.dart';
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Music MAOE'),
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: FluidActionCard(
        color1: Colors.white,
        color2: Colors.white,
        backgroundcolor: const Color.fromARGB(255, 1, 17, 44),
        borderRadius1: BorderRadius.circular(20),
        borderRadius2: BorderRadius.circular(20),
        TextPosition_Top: 22.0,
        TextPosition_Down: 29.0,
        height: 300.0,
        width: 260.0,
        CardCount: 3,
        text1: const Text(
          "Yawee se manifestara",
          style: TextStyle(
            color: Color.fromARGB(255, 1, 17, 44),
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            letterSpacing: 2.0,
          ),
        ),
        text2: const Text(
          "Brayan Torres Salcedo",
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 18.0,
              fontStyle: FontStyle.italic),
        ),
        Position: 180.0,
        shadow: const BoxShadow(
          color: Color.fromARGB(255, 1, 4, 22),
          blurRadius: 10.0,
          spreadRadius: 0.2,
          offset: Offset(0, 3),
        ),
        assetimage: 'assets/images/musica.png',
        ontap: () {},
      ),
    );
  }
}

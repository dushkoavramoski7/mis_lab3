import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final Color primaryColor = Colors.teal;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student organizer',
      theme: ThemeData(
        primarySwatch: primaryColor as MaterialColor,
        primaryColor: primaryColor,
        primaryColorLight: (primaryColor as MaterialColor)[200],
        primaryColorDark: (primaryColor as MaterialColor)[700],
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page', elements: [
        "Prv",
        "Vtor",
        "Tret",
        "Cetvrt",
        "Pet",
        "Shest",
        "Tret",
        "Cetvrt",
        "Pet",
        "Shest"
      ]),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.elements});

  final String title;
  final List<String> elements;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () => print('asd'),
              icon: const Icon(Icons.account_circle_outlined))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => print("sad"),
      ),
      body: ListView.builder(
        itemCount: widget.elements.length,
        itemBuilder: (context, index) {
          return Card(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                child: Text(
                  widget.elements.elementAt(index),
                  style: TextStyle(
                      fontSize: 30, color: Theme.of(context).primaryColorLight),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add_box_rounded),
                onPressed: () {
                  print(index);
                },
              )
            ],
          ));
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

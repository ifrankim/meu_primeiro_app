import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu primeiro App",
      home: HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.purpleAccent,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.purpleAccent),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.grey),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        // color: Colors.green,
        child: Center(
            child: Text('Botão apertado $count',
                style: TextStyle(color: Colors.white, fontSize: 20))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(65),
          child: Container(
            height: 250,
            color: Colors.purple,
            child: Center(
                child: Text('Contador',
                    style: TextStyle(color: Colors.white, fontSize: 15))),
          ),
        );
}

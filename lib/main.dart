import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Apprendre le drawer'),
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

  int index = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView.builder(
          itemCount: 9,
            itemBuilder: (context, index) {
            if (index == 0) {
              return const DrawerHeader(
                  child: Center(
                    child: Text("Mon header"),
                  )
              );
            } else {
              return ListTile(
                title: Text("Element $index "),
                onTap: () {
                  setState(() {
                    this.index = index + 1;
                    Navigator.pop(context);
                  });
                },
              );
            }

            }
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Ici sera le drawer numéro: $index',),
      ),
    );
  }
}
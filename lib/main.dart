import 'package:flutter/material.dart';
import 'package:gdsc_task/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Register(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static int index = 0;
  static List<Widget> carts = [];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CircleAvatar(
            child: IconButton(
                onPressed: () {
                  setState(() {
                    MyHomePage.carts.add(myCart(MyHomePage.index));
                  });
                },
                icon: Icon(Icons.add)),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: MyHomePage.carts.length,
              itemBuilder: (c, i) {
                MyHomePage.index = i;
                return myCart(i);
              })
        ],
      ),
    );
  }

  Widget myCart(index) {
    return Card(
      child: ListTile(
        leading: Text('Item $index'),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              MyHomePage.carts.removeAt(index);
              print(index);
              print(MyHomePage.carts);
            });
          },
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}

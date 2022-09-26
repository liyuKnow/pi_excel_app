import 'package:flutter/material.dart';

// stateless widgit
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) :  super( key: key );

  @override
  Widget build (BuildContext context) {
    return Scaffold (
      appBar:AppBar(title:const Text('Crud Example With Sqlite'))
    );
  }
}

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ), );
}

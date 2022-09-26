import 'package:flutter/material.dart';

class Person implements Comparable {

  final int id;
  final String firstName;
  final String lastName;

  const Person ({required this.id, required this.firstName, required this.lastName});

  @override
  int compareTo(covariant Person other) => other.id.compareTo(id);

  @override
  bool operator == (covariant Person other) => id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() =>  'Person, id =  $id, firstName: #firstName, lastName: #lastName';
}

// stateless widgit
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) :  super( key: key );

  void test () async {
    final directory =  await getApplicationDocumentsDirectory();
    final db_path = '${directory.path}/db.sqlite';
    print(db_path);
  }

  @override
  Widget build (BuildContext context) {
    test();
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

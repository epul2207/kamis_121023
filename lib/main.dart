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
      title: 'Belajar Scaffold',
      home: Layar(),
    );
  }
}

class Layar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Belajar Scaffold')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.red,
              ))
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.amber,
            )),
      ),
      body: Center(
        //Belajar Membuat Container
        child: Container(
            //decoration sebuat container
            decoration: BoxDecoration(
                color: Colors.lightGreen,
                border: Border.all(
                  color: Colors.red,
                  width: 3,
                ),
                //Membuat jadi lancip
                borderRadius: BorderRadius.circular(20),
                //Menambahkan shadow
                //dengan BoxShadow
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, offset: Offset(3, 6), blurRadius: 10)
                ]),
            padding: const EdgeInsets.all(20),
            child: Text(
              'Ini adalah belajar Scaffold',
              style: TextStyle(fontSize: 50),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

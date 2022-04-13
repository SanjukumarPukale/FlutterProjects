import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(    
      debugShowCheckedModeBanner: false,               //MaterialApp is widget   //home is argument
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),
        body: const Text('This is body'),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings)
            )
          ]),
      ),                   // scaffold and Material are like skeleton of app  
    );
  }
}
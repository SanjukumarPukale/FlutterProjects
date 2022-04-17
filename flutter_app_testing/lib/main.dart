import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName='Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp is widget   //home is argument  //Scaffold is widget
      debugShowCheckedModeBanner:
          false, //this argument remove debug written in the app shown upword right
      home: Scaffold(      // scaffold and Material are like skeleton of app
        appBar: AppBar(
          title:const Center(
            child:Text('App Title')), 
        ),

        body: Center(
          child: currentIndex == 0 ? Container(
            width: double.infinity,
            
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,       // vertical shift
              crossAxisAlignment: CrossAxisAlignment.center,     // horizantal shift
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.orange,
                  ),
                  onPressed: () {
                    setState(() {
                      buttonName = 'Clicked';     // when clicked on the button the state will be change from click to clicked, to do this we have to use stateful widget, setState()
                    });}, 
                    child: Text(buttonName)), 

                    ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = 'Clicked';     // when clicked on the button the state will be change from click to clicked, to do this we have to use stateful widget, setState()
                    });}, 
                    child: Text(buttonName)),

              ],
            ),
          ) :const SizedBox(),
          ),
          
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings))
        ],
        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        ),
      ), 
    );
  }
}


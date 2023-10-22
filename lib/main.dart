import 'package:flutter/material.dart';
import 'package:hackernews/Pages/HomePage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main(){
   runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
   ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void> loadPage() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => homePage()));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xff042B59),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitSpinningLines(
                color: Colors.green,
                size: 90.0,
              ),
              Text('Hacker News',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),)
            ],
          ),
        ),
      )
    );
  }
}
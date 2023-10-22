import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff0553B1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    maxRadius: 60,
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 8),
              //   child: Center(
              //     child: Container(
              //       alignment: Alignment.center,
              //       height: MediaQuery.of(context).size.height/8,
              //       width: MediaQuery.of(context).size.width/2,
              //       child: Text('Hacker News',style: TextStyle(
              //         fontSize: 25,
              //         fontWeight: FontWeight.bold
              //       ),),
              //       decoration: BoxDecoration(
              //         color: Colors.greenAccent,
              //         borderRadius: BorderRadius.all(Radius.circular(40)),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Marquee(
                    text: 'Welcome To HACKER NEWS',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    // decelerationDuration: Duration(seconds: 2),
                    blankSpace: 40,
                    // textDirection: TextDirection.rtl,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pradyot_harsh/main.dart';
import 'package:pradyot_harsh/page1.dart';
import 'package:pradyot_harsh/page5.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  int currentPageIndex = 0;
  final List<Widget> pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  // int counter = 0;
  // late Timer timer;

  // @override
  // void initState() {
  //   super.initState();
  //   timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
  //     // This function will be called every 3 seconds
  //     setState(() {
  //       counter++; // Increment counter
  //     });
  //     // Print text to the console
  //     debugPrint('Printed text at interval: $counter = ${Global.loginStatus}');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: BottomNavigationBar(
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.blueAccent,
                showUnselectedLabels: true,
                backgroundColor: Colors.grey,
                currentIndex: currentPageIndex,
                onTap: (index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'HOME',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add_to_queue_outlined),
                    label: 'ABOUT',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.room_service),
                    label: 'SERVICE',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.phone),
                    label: 'Contact US',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.login),
                    label: 'LOGIN',
                  ),
                ]),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: PageView.builder(
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return pages[currentPageIndex];
                },
              ))
        ],
      ),
    );
  }
}

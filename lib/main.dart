import 'package:flutter/material.dart';
import 'package:pradyot_harsh/page1.dart';
import 'package:pradyot_harsh/page5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

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

// *************************************************************

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/com.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/services.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/com.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
//*************************************************************************** */
//*************************************************************************** */


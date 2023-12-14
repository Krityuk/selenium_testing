import 'package:flutter/material.dart';
import 'package:pradyot_harsh/homepage.dart';

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
              image: AssetImage('assets/uber.png'),
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


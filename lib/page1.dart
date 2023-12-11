import 'package:flutter/material.dart';
import 'package:pradyot_harsh/GLobal.dart';
import 'package:pradyot_harsh/nextpage.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String selectedDestination = 'Destination';
  String selectedInitialAddress = 'Initial Address';

  final List<String> destinations = [
    'Destination 1',
    'Destination 2',
    'Destination 3'
  ];
  final List<String> initialAddresses = ['Address 1', 'Address 2', 'Address 3'];
  TextEditingController destinationController = TextEditingController();
  TextEditingController sourceController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    destinationController.dispose();
    sourceController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(border: Border.all(width: 3)),
            padding: const EdgeInsets.all(10),
            width: 300,
            height: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: destinationController,
                  onChanged: (value) {
                    Global.destination = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Destination',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: sourceController,
                  onChanged: (value) {
                    Global.currentLocation = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Source',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    debugPrint('${Global.loginStatus}       😎😎😎😎😎😎😎😎');
                    // if (Global.loginStatus == false) {
                    //   showMyDialog(context, "Please Do Login First");
                    // } else
                    if (sourceController.text == "" ||
                        destinationController.text == "") {
                      showMyDialog(context, "Please fill above Details");
                    } else {
                      // Button on pressed logic here
                      sourceController.clear();
                      destinationController.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NextPage()),
                      );
                    }
                  },
                  child: const Text('Next'),
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       showMyDialog(context, "${Global.loginStatus}");
                //       // Global.updateLoginStatus(false);
                //       // Global.loginStatus = false;
                //     },
                //     child: const Text('Log Out'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

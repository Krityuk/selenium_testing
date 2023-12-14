import 'package:flutter/material.dart';
import 'package:pradyot_harsh/global.dart';
import 'package:pradyot_harsh/nextpage.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String selectedInitialAddress = 'Select Curr Location';

  String selectedDestination = 'Select Destination';
  final List<String> destinations = [
    'Select Destination',
    'Ranchi',
    'New Delhi',
    'Mumbai',
    'Diu',
    'Amd',
    'Ujjain'
  ];
  final List<String> initialAddresses = [
    'Select Curr Location',
    'Ranchi',
    'Ujjain',
    'New Delhi',
    'Mumbai',
    'Diu',
    'Amd'
  ];

  //
  // TextEditingController destinationController = TextEditingController();
  // TextEditingController sourceController = TextEditingController();

  // @override
  // void dispose() {
  //   // Clean up the controllers when the widget is disposed
  //   destinationController.dispose();
  //   sourceController.dispose();
  //   super.dispose();
  // }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(width: 3)),
                padding: const EdgeInsets.all(10),
                width: 300,
                height: 400,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/pra.jpg',
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(height: 30),
                    DropdownButton(
                        value: selectedInitialAddress,
                        items: initialAddresses
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedInitialAddress = value.toString();
                            Global.currentLocation = selectedInitialAddress;
                          });
                        }),
                    DropdownButton(
                        value: selectedDestination,
                        items: destinations
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedDestination = value.toString();
                            Global.destination = selectedDestination;
                          });
                        }),
                    const SizedBox(height: 16),
                    // TextField(
                    //   controller: destinationController,
                    //   onChanged: (value) {
                    //     Global.destination = value;
                    //   },
                    //   decoration: InputDecoration(
                    //     labelText: 'Enter Destination',
                    //     fillColor: Colors.white,
                    //     filled: true,
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //     ),
                    //   ),
                    // ),
                    // TextField(
                    //   controller: sourceController,
                    //   onChanged: (value) {
                    //     Global.currentLocation = value;
                    //   },
                    //   decoration: InputDecoration(
                    //     labelText: 'Enter Source',
                    //     fillColor: Colors.white,
                    //     filled: true,
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('${Global.loginStatus} 😎😎😎😎');
                        // if (Global.loginStatus == false) {
                        //   showMyDialog(context, "Please Do Login First");
                        // } else
                        // if (sourceController.text == "" ||
                        //     destinationController.text == "") {
                        //   showMyDialog(context, "Please fill above Details");
                        // }
                        // else {
                        // Button on pressed logic here
                        // sourceController.clear();
                        // destinationController.clear();
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const NextPage()),
                        // );
                        // }

                        if (selectedInitialAddress == "Select Address" ||
                            selectedDestination == "Select Destination") {
                          showMyDialog(context, "Please select above details");
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NextPage()),
                          );
                        }
                      },
                      child: const Text('Next'),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    showMyDialog(context, "log Out done");
                    // Global.updateLoginStatus(false);
                    Global.loginStatus = false;
                  },
                  child: const Text('Log Out'))
            ],
          ),
        ),
      ),
    );
  }
}

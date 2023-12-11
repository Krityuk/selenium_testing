import 'package:flutter/material.dart';
import 'package:pradyot_harsh/GLobal.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          ListTile(
            title: const Text('Destination'),
            subtitle: Text(Global.destination),
          ),
          ListTile(
            title: const Text('Source'),
            subtitle: Text(Global.currentLocation),
          ),
          ListTile(
            title: const Text('Distance'),
            subtitle: Text('${Global.distance} km'),
          ),
          const SizedBox(height: 20),
          const Divider(height: 10, color: Colors.black),
          Row(
            children: [
              Expanded(
                child: RadioListTile<String>(
                  title: const Text('One Way'),
                  value: 'One Way',
                  groupValue: Global.tripType,
                  onChanged: (value) {
                    setState(() {
                      Global.tripType = value!;
                    });
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ListTile(
                  title: const Text('Round Trip'),
                  leading: Radio<String>(
                    value: 'Round Trip',
                    groupValue: Global.tripType,
                    onChanged: (value) {
                      setState(() {
                        Global.tripType = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 10, color: Colors.black),
          ListTile(
            title: const Text('Mini'),
            trailing: const Text(
              'Rs12/km',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Radio<String>(
              value: 'Mini',
              groupValue: Global.selectedCar,
              onChanged: (value) {
                setState(() {
                  Global.selectedCar = value!;
                });
              },
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Prime Sedan'),
            trailing: const Text(
              'Rs15/km',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Radio<String>(
              value: 'Prime Sedan',
              groupValue: Global.selectedCar,
              onChanged: (value) {
                setState(() {
                  Global.selectedCar = value!;
                });
              },
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Prime SUV'),
            trailing: const Text(
              'Rs20/km',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Radio<String>(
              value: 'Prime SUV',
              groupValue: Global.selectedCar,
              onChanged: (value) {
                setState(() {
                  Global.selectedCar = value!;
                });
              },
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                // setState(() {
                Global.calculatePrice();
                // });
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Confirm Details'),
                      content: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Destination: ${Global.destination}'),
                            Text('Current Location: ${Global.currentLocation}'),
                            Text('Price: ${Global.price}'),
                            // Add more Global attributes here as needed
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Confirm'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Next'))
        ],
      ),
    );
  }
}

Future<void> showMyDialog(BuildContext context, String alert) async {
  return await showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: Text(alert),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

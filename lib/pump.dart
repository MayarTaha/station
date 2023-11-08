import 'package:flutter/material.dart';

import 'package:station/price.dart';

class Pump extends StatelessWidget {
  const Pump({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اختر المضخة'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.teal),
                          ),
                          width: 300,
                          height: 130,
                          child: TextButton.icon(
                            icon: Icon(
                              Icons.local_gas_station_outlined,
                              color: Colors.teal,
                              size: 90.0,
                            ),
                            label: RichText(
                              text: TextSpan(
                                text: '1',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Price(),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.teal),
                          ),
                          width: 300,
                          height: 130,
                          child: TextButton.icon(
                            icon: Icon(
                              Icons.local_gas_station_outlined,
                              color: Colors.teal,
                              size: 90.0,
                            ),
                            label: RichText(
                              text: TextSpan(
                                text: '3',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Price()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.teal),
                    ),
                    child: TextButton.icon(
                      icon: Icon(
                        Icons.local_gas_station_outlined,
                        color: Colors.teal,
                        size: 90.0,
                      ),
                      label: RichText(
                        text: TextSpan(
                          text: '2',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Price()),
                        );
                      },
                    ),
                    width: 100,
                    height: 130,
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

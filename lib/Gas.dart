import 'package:flutter/material.dart';
import 'package:station/pump.dart';

class Gas extends StatelessWidget {
  const Gas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اختر النوع '),
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
                            icon: const Icon(
                              Icons.local_gas_station_outlined,
                              color: Colors.teal,
                              size: 90.0,
                            ),
                            label: RichText(
                              text: const TextSpan(
                                text: 'ديزل\n0.65 SR',
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
                                  builder: (context) => const Pump(price: 0.65),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.teal),
                          ),
                          width: 300,
                          height: 130,
                          child: TextButton.icon(
                            icon: const Icon(
                              Icons.local_gas_station_outlined,
                              color: Colors.teal,
                              size: 90.0,
                            ),
                            label: RichText(
                              text: const TextSpan(
                                text: 'بنزين 95\n2.18 SR',
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
                                  builder: (context) => const Pump(price: 2.18),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.teal),
                      ),
                      width: 100,
                      height: 130,
                      child: TextButton.icon(
                        icon: const Icon(
                          Icons.local_gas_station_outlined,
                          color: Colors.teal,
                          size: 90.0,
                        ),
                        label: RichText(
                          text: const TextSpan(
                            text: 'بنزين 91\n2.0 SR',
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
                              builder: (context) => const Pump(price: 2.0),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Pay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('شاشه الدفع'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.teal),
                    ),
                    width: 150,
                    height: 100,
                    child: TextButton(
                      onPressed: () {
                        //action
                      },
                      child: const Text(
                        'شبكة',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.teal),
                    ),
                    width: 150,
                    height: 100,
                    child: TextButton(
                      onPressed: () {
                        //action
                      },
                      child: const Text(
                        'كاش',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.teal),
                ),
                width: 200,
                height: 100,
                child: TextButton(
                  onPressed: () {
                    //action
                  },
                  child: const Text(
                    'stc pay',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 200),
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 200,
                  height: 60,
                  color: Colors.teal,
                  child: TextButton(
                    onPressed: () {
                      //action
                    },
                    child: const Text(
                      'دفع و طباعة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class suppliers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(/*left:1200.0*/),
              child: Text('الموردين'),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: <Color>[
                    Colors.blueGrey,
                    Colors.cyan,
                  ])),
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'اسم المورد',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'العنوان',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'رقم الجوال',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'السجل التجاري',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'الرقم الضريبي',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ملاحظات',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    height: 50,
                    width: 100,
                    color: Colors.red[900],
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'حذف',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    )),
                SizedBox(width: 5),
                Container(
                    height: 50,
                    width: 100,
                    color: Colors.brown,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'بحث',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    )),
                SizedBox(width: 5),
                Container(
                    height: 50,
                    width: 100,
                    color: Colors.amber[500],
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'جديد',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    )),
                SizedBox(width: 5),
                Container(
                    height: 50,
                    width: 100,
                    color: Colors.cyan[900],
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'حفط',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}

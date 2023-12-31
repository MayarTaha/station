import 'package:flutter/material.dart';
import 'package:station/customers.dart';
import 'package:station/gas.dart';
import 'package:station/suppliers.dart';
import 'package:station/widgets/Nav_Drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        shadowColor: Colors.teal,
        backgroundColor: Colors.teal,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 250.0),
          child: Text(' مرحبا'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 80.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Gas()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/itm.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'الاصناف\nItems',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Gas()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/bill.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'فاتورة مشتريات\nPurches Bill',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Gas()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/gas.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'فاتورة بنزين\nPos Gasoline',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Gas()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/pos.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'فاتورة بيع\nPos ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Suppliers(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/sup.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'الموردين\nSuppliers ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Customers(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/custm.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'العملاء\nCustumers ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ), //
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Customers(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/report.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'التقارير\nReports ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Gas()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/st.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'الاعدادات\nSettings ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Gas()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/printer.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'اعدادات الطابعه\nPrinter ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

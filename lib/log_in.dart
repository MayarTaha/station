import 'package:flutter/material.dart';
import 'package:station/home.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _PriceState();
}

class _PriceState extends State<LogIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String _maritalStatus = 'محل';
  bool hidePassword = true;

  get validatePassword => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('نسخة تجريبية'), backgroundColor: Colors.teal),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "نسخة تجريبية\n",
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: "تسجيل دخول\n",
                              style: TextStyle(fontSize: 10),
                            ),
                            WidgetSpan(child: Icon(Icons.person, size: 50)),
                          ],
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350],
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    labelText: 'رقم الهاتف',
                    hintTextDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350],
                    filled: true,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      icon: (hidePassword == true)
                          ? const Icon(Icons.visibility_off)
                          : const Icon(
                              Icons.visibility,
                            ),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    labelText: 'كلمة المرور',
                    hintTextDirection: TextDirection.rtl,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'نسيت كلمة المرور',
                  textDirection: TextDirection.rtl,
                ),
              ),
              RadioListTile<String>(
                title: const Text('محل'),
                value: 'محل',
                groupValue: _maritalStatus,
                onChanged: (value) {
                  setState(() {
                    _maritalStatus = value.toString();
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('موظف/مشرف'),
                value: 'موظف/مشرف',
                groupValue: _maritalStatus,
                onChanged: (value) {
                  setState(() {
                    _maritalStatus = value.toString();
                  });
                },
              ),
              Container(
                width: 350,
                height: 50,
                color: Colors.teal,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                    //action
                  },
                  child: const Text(
                    'تسجيل الدخول',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white),
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:station/pay.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';

class Price extends StatefulWidget {
  final double price;

  const Price({super.key, required this.price});

  @override
  State<Price> createState() => _PriceState(price);
}

class _PriceState extends State<Price> {
  final double price;

  _PriceState(this.price);

  TextEditingController controller = TextEditingController();
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  String text = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: TextField(
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onTap: () {
                        setState(() {
                          text = '1';
                        });
                      },
                      controller: firstController,
                      decoration: const InputDecoration(
                        labelText: 'السعر',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: secondController,
                      onTap: () {
                        text = '2';
                      },
                      decoration: const InputDecoration(
                        labelText: 'اللترات',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              NumericKeyboard(
                  onKeyboardTap: _onKeyboardTap,
                  textStyle: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  rightButtonFn: () {
                    if (controller.text.isEmpty) return;
                    setState(() {
                      controller.text = controller.text
                          .substring(0, controller.text.length - 1);
                      if (text == '1') {
                        firstController.text = firstController.text
                            .substring(0, firstController.text.length - 1);
                        secondController.text = '';
                      } else {
                        secondController.text = secondController.text
                            .substring(0, secondController.text.length - 1);
                        firstController.text = '';
                      }
                    });
                  },
                  rightButtonLongPressFn: () {
                    if (controller.text.isEmpty) return;
                    setState(() {
                      firstController.text = '';
                      secondController.text = '';
                      controller.text = '';
                    });
                  },
                  rightIcon: const Icon(
                    Icons.backspace,
                    color: Colors.red,
                  ),
                  leftButtonFn: () {
                    if (text == '1') {
                      _calculate1();
                    } else {
                      _calculate2();
                    }
                  },
                  leftIcon: const Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly),
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  child: const Text(
                    'دفع',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pay()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
      controller.text = controller.text + value;
      if (text == '1') {
        firstController.text = controller.text;
      } else {
        secondController.text = controller.text;
      }
    });
  }

  void _calculate2() {
    final secondValue = double.parse(secondController.text);
    firstController.text = (secondValue * price).toString();
  }

  void _calculate1() {
    final firstValue = double.parse(firstController.text);
    secondController.text = (firstValue / price).toString();
  }
}

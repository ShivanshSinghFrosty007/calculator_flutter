import 'package:flutter/material.dart';

void main() {
  const appTitle = 'Form Styling Demo';
  return runApp(MaterialApp(
    title: appTitle,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => CalPage();
}

class CalPage extends State<MyApp> {
  String number = "";
  String sign = "";
  String num1 = "";
  bool decimal = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
            child: Text(
              num1 + sign,
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
            child: Text(
              number,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
        Container(
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = '';
                              num1 = '';
                              sign = '';
                              decimal = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            'AC',
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print(number.substring(
                                number.length - 1, number.length));
                            if (number.substring(
                                    number.length - 1, number.length) ==
                                '.') {
                              decimal = false;
                            }
                            setState(() {
                              number = number.substring(0, number.length - 1);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            'C',
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              sign = '%';
                              num1 = number;
                              number = "";
                              decimal = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '%',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              setState(() {
                                sign = '/';
                                num1 = number;
                                number = "";
                                decimal = false;
                              });
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '/',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "1";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "2";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "3";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '3',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              sign = '*';
                              num1 = number;
                              number = "";
                              decimal = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '*',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "4";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '4',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "5";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '5',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "6";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '6',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              sign = '-';
                              num1 = number;
                              number = "";
                              decimal = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '-',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "7";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '7',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "8";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '8',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "9";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '9',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              sign = '+';
                              num1 = number;
                              number = "";
                              decimal = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '+',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (decimal == false) {
                                number = number + ".";
                                decimal = true;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '.',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "0";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '0',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number = number + "00";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '00',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (number != '') {
                                if (sign == '+') {
                                  double ans =
                                      double.parse(num1) + double.parse(number);
                                  number = ans.toString();
                                }

                                if (sign == '-') {
                                  double ans =
                                      double.parse(num1) - double.parse(number);
                                  number = ans.toString();
                                }

                                if (sign == '*') {
                                  double ans =
                                      int.parse(number) * double.parse(num1);
                                  number = ans.toString();
                                }

                                if (sign == '/') {
                                  double ans =
                                      int.parse(num1) / double.parse(number);
                                  number = ans.toString();
                                }

                                if (sign == '%') {
                                  double ans =
                                      int.parse(num1) % double.parse(number);
                                  number = ans.toString();
                                }
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                          ),
                          child: const Text(
                            '=',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

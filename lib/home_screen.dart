import 'package:calculator/components/button.dart';
import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black ,
      body: SafeArea(

        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: (Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userinput.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                      ),
                     const SizedBox(
                        height: 30,
                      ),
                      Text(
                        answer.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  )),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Button(
                          title: 'AC',
                          onpress: () {
                            userinput = "";
                            answer = "";
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '+/-',
                          onpress: () {
                            userinput += '+/-';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '%',
                          onpress: () {
                            userinput += '%';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '/',
                          onpress: () {
                            userinput += '/';
                            setState(() {
                              
                            });
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: '7',
                          onpress: () {
                            userinput += '7';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '8',
                          onpress: () {
                            userinput += '8';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '9',
                          onpress: () {
                            userinput += '9';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: 'x',
                          onpress: () {
                            userinput = '*';
                            setState(() {
                              
                            });
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: '4',
                          onpress: () {
                            userinput += '4';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '5',
                          onpress: () {

                          userinput += '5';
                          setState(() {
                            
                          });
                          },
                        ),
                        Button(
                          title: '6',
                          onpress: () {
                            userinput += '6';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '-',
                          onpress: () {
                            userinput += '-';
                            setState(() {
                              
                            });
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: '1',
                          onpress: () {
                            userinput += '1';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '2',
                          onpress: () {
                            userinput += '2';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '3',
                          onpress: () {
                            userinput += '3';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '+',
                          onpress: () {
                            userinput += '+';
                            setState(() {
                              
                            });
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: '0',
                          onpress: () {
                            userinput += '0';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '.',
                          onpress: () {
                            userinput += '.';
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: 'dlet',
                          onpress: () {
                            userinput.substring(0, userinput.length - 1);
                            setState(() {
                              
                            });
                          },
                        ),
                        Button(
                          title: '=',
                          onpress: () {
                            equalPress();
                            setState(() {
                              
                            });
                          
                             
                             
                             
                             
                            
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void equalPress(){
    Parser p = Parser();
    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();


    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}



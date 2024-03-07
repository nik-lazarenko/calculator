import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}


class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});


  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  late double num1,num2,ans=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('Калькулятор')),),
        body: Column(
          children: [
            const Text('Введите первое число', style: TextStyle(fontSize: 30),),
            TextField(onChanged: (value) => num1=double.parse(value),),
            const Text('Введите второе число', style: TextStyle(fontSize: 30),),
            TextField(onChanged: (value) => num2=double.parse(value),),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(child: const Text('+'),onPressed: (){
                  setState(() {
                    ans=num1+num2;
                  });},),
                  ElevatedButton(child: const Text('-'),onPressed: (){
                    setState(() {
                      ans=num1-num2;
                    });},),
                  ElevatedButton(child: const Text('*'),onPressed: (){
                    setState(() {
                      ans=num1*num2;
                    });},),
                  ElevatedButton(child: const Text('/'),onPressed: (){
                    setState(() {
                      ans=num1/num2;
                    });},),
                  ],
                  ),
                  Text(ans.toString(), style: const TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora de soma'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: CalculatorScreen(),
        ),
      ),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result = ' ';
  double number1 = 0;
  double number2 = 0;

  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.red),
        decoration: InputDecoration(
          labelText: 'Número 01 ',
          labelStyle: TextStyle(color: Colors.red),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black87, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black87, width: 2.0),
          ),
        ),
        onChanged: (value) {
          number1 = double.parse(value);
        });

    TextField num2 = TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.red),
        decoration: InputDecoration(
          labelText: 'Número 02 ',
          labelStyle: TextStyle(color: Colors.red),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black87, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black87, width: 2.0),
          ),
        ),
        onChanged: (value) {
          number2 = double.parse(value);
        });

    ElevatedButton botao = ElevatedButton(
      onPressed: () {
        setState(() {
          double calc = number1 + number2;
          this.result = " O resultado da soma é ${calc.toStringAsFixed(0)}";
        });
      },
      child: Text('Calcular'),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );

    Text result = Text(
      this.result,
      style: TextStyle(
        color: Colors.red,
        fontSize: 20,
      ),
    );

    Padding separator = Padding(padding: EdgeInsets.all(5.0));

    return Column(
      children: <Widget>[
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          child: botao,
          width: double.infinity,
        ),
        separator,
        result
      ],
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int totalClicks = 0;

  @override
  Widget build(BuildContext context) {
    Text text1 = Text('exemplo 55');
    Text text2 = Text('exemplo 55');
    TextField entrada = TextField();

    return MaterialApp(
      title: 'Meu app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cleber Batista Dev '),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total de clicks  ${totalClicks}",
              style: TextStyle(color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {
                print('Clicou');
                setState(() {
                  totalClicks++;
                });
              },
              child: Text('Clicar'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              ),
            )
          ],
        )),
      ),
    );
  }
}

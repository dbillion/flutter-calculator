import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {
// we functions ;later
        },
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        shape: const CircleBorder(),
        color: btncolor,
        padding: const EdgeInsets.all(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Calculator display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              // here buttons functions will be called from
              calbutton('AC', Colors.grey, Colors.black),
              calbutton('+/-', Colors.grey, Colors.black),
              calbutton('%', Colors.grey, Colors.black),
              calbutton('/', Colors.amber, Colors.white),
            ]),
            const SizedBox(
              height: 10,
            ),
            // we copy and repeat the same process
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              // here buttons functions will be called from
              calbutton('7', Colors.grey, Colors.black),
              calbutton('8', Colors.grey, Colors.black),
              calbutton('9', Colors.grey, Colors.black),
              calbutton('x', Colors.amber, Colors.white),
            ]),
            const SizedBox(
              height: 10,
            ),
            // we copy and repeat the same process
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              // here buttons functions will be called from
              calbutton('AC', Colors.grey, Colors.black),
              calbutton('+/-', Colors.grey, Colors.black),
              calbutton('%', Colors.grey, Colors.black),
              calbutton('/', Colors.amber, Colors.white),
            ]),
            const SizedBox(
              height: 10,
            ),
            // we copy and repeat the same process
          ],
        ),
      ),
    );
  }
}

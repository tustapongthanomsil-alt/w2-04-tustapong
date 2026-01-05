
import 'package:flutter/material.dart';

class Celsius  extends StatefulWidget {
  const Celsius({super.key});

  @override
  State<Celsius> createState() => CelsiusState();
}

class CelsiusState extends State<Celsius> {
  double _Celsius = 0;

  double _Fahrenheit = 0;

  TextEditingController _Celsiusctrl = TextEditingController();

  void _calReg() {
    _Celsius = double.tryParse(_Celsiusctrl.text) ?? 0;

    setState(() {
      _Fahrenheit = _Celsius * 9/5 + 32;
    });
  }

  final InputDecoration _texFieldStyle = InputDecoration(
    filled: true,
    fillColor: Colors.grey[500],
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''), centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "อุณหภูมิ $_Celsius C คือ อุณหภูมิ $_Fahrenheit F",
              style: TextStyle(fontSize: 22),
            ),
            TextField(
              controller: _Celsiusctrl,
              keyboardType: TextInputType.number,
              decoration: _texFieldStyle.copyWith(
                label: Text('อุณหภูมิ'),
                hint: Text('กรอกอุณหภูมิ'),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () => _calReg(), child: Text('คำนวน')),
          ],
        ),
      ),
    );
  }
}

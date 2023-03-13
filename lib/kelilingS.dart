import 'package:flutter/material.dart';
import 'package:quis_mobile/homePage.dart';
import 'package:quis_mobile/luasS.dart';

class KelilingSegitiga extends StatefulWidget {
  @override
  _KelilingSegitigaState createState() => _KelilingSegitigaState();
}

class _KelilingSegitigaState extends State<KelilingSegitiga> {
  final TextEditingController _kelilingController = TextEditingController();
  double _keliling = 0;

  void _hitungKeliling() {
    double sisi = double.parse(_kelilingController.text);
    setState(() {
      _keliling = sisi * 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keliling Segitiga'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.logout), onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) {
                return const HalamanUtama();
              }), (route) => false,
            );
          },),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _kelilingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'sisi',
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [                
                Expanded(child: RaisedButton(
                  child: Text('Luas'),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return LuasSegitiga(); }));
                  },
                )),
                SizedBox(height: 16.0),

                Expanded(child: RaisedButton(
                  child: Text('Keliling'),
                  onPressed: (){
                    
                  },
                )),
                SizedBox(height: 16.0),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _hitungKeliling,
              child: Text('Hitung Keliling'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Keliling Segitiga: $_keliling',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

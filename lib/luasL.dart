import 'package:flutter/material.dart';
import 'package:quis_mobile/homePage.dart';
import 'package:quis_mobile/kelilingL.dart';

class LuasLayang extends StatefulWidget {
  @override
  _LuasLayangState createState() => _LuasLayangState();
}

class _LuasLayangState extends State<LuasLayang> {
  final TextEditingController _diagonal1Controller = TextEditingController();
  final TextEditingController _diagonal2Controller = TextEditingController();
  double _luas = 0;

  void _hitungLuas() {
    double diagonal1 = double.parse(_diagonal1Controller.text);
    double diagonal2 = double.parse(_diagonal2Controller.text);
    setState(() {
      _luas = 0.5 * diagonal1 * diagonal2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Layang-layang'),
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
              controller: _diagonal1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Diagonal 1',
              ),
            ),
            TextField(
              controller: _diagonal2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Diagonal 2',
              ),
            ),
            SizedBox(height: 16.0),
             Row(
              children: [                
                Expanded(child: RaisedButton(
                  child: Text('Luas'),
                  onPressed: (){
                  },
                )),
                SizedBox(height: 16.0),

                Expanded(child: RaisedButton(
                  child: Text('Keliling'),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return KelilingLayang(); }));
                  },
                )),
                SizedBox(height: 16.0),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _hitungLuas,
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 16.0),

            Text(
              'Luas Layang-layang: $_luas',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

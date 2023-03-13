import 'package:flutter/material.dart';
import 'package:quis_mobile/homePage.dart';
import 'package:quis_mobile/kelilingS.dart';
import 'package:quis_mobile/luasL.dart';

class KelilingLayang extends StatefulWidget {
  @override
  _KelilingLayangState createState() => _KelilingLayangState();
}

class _KelilingLayangState extends State<KelilingLayang> {
  final TextEditingController _sisi1Controller = TextEditingController();
  final TextEditingController _sisi2Controller = TextEditingController();
  double _keliling = 0;

  void _hitungLuas() {
    double sisi1 = double.parse(_sisi1Controller.text);
    double sisi2 = double.parse(_sisi2Controller.text);
    setState(() {
      _keliling = 2 * (sisi1 + sisi2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keliling Layang-Layang'),
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
              controller: _sisi1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Sisi 1',
              ),
            ),
            TextField(
              controller: _sisi2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Sisi 2',
              ),
            ),
            SizedBox(height: 16.0),

            Row(
              children: [                
                Expanded(child: RaisedButton(
                  child: Text('Luas'),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return LuasLayang(); }));
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
              onPressed: _hitungLuas,
              child: Text('Hitung Keliling  '),
            ),
            SizedBox(height: 16.0),

            SizedBox(height: 16.0),
            Text(
              'Keliling Layang-layang: $_keliling',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

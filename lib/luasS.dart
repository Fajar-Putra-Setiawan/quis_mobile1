import 'package:flutter/material.dart';
import 'package:quis_mobile/homePage.dart';
import 'package:quis_mobile/kelilingS.dart';

class LuasSegitiga extends StatefulWidget {
  @override
  _LuasSegitigaState createState() => _LuasSegitigaState();
}

class _LuasSegitigaState extends State<LuasSegitiga> {
  final TextEditingController _alasController = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();
  double _luas = 0;

  void _hitungLuas() {
    double alas = double.parse(_alasController.text);
    double tinggi = double.parse(_tinggiController.text);
    setState(() {
      _luas = 0.5 * alas * tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Segitiga'),
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
              controller: _alasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Alas',
              ),
            ),
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tinggi',
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return KelilingSegitiga(); }));
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

            SizedBox(height: 16.0),
            Text(
              'Luas Segitiga: $_luas',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

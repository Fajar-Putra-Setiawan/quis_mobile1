import 'package:flutter/material.dart';
import 'package:quis_mobile/kelilingS.dart';
import 'package:quis_mobile/luasS.dart';


class Segitiga extends StatefulWidget {
  const Segitiga({Key? key}) : super(key: key);

  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [                
                Expanded(child: ElevatedButton(
                  child: Text('Luas'),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return LuasSegitiga(); }));
                  },
                )),
                SizedBox(height: 16.0),

                Expanded(child: ElevatedButton(
                  child: Text('Keliling'),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return KelilingSegitiga(); }));
                  },
                )),
                SizedBox(height: 16.0),
              ],
        ),
      ),
     );
  }
}
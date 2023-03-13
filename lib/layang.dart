import 'package:flutter/material.dart';
import 'package:quis_mobile/kelilingL.dart';
import 'package:quis_mobile/kelilingS.dart';
import 'package:quis_mobile/luasL.dart';
import 'package:quis_mobile/luasS.dart';


class LayangLayang extends StatefulWidget {
  const LayangLayang({Key? key}) : super(key: key);

  @override
  _LayangLayangState createState() => _LayangLayangState();
}

class _LayangLayangState extends State<LayangLayang> {
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return LuasLayang(); }));
                  },
                )),
                SizedBox(height: 16.0),

                Expanded(child: ElevatedButton(
                  child: Text('Keliling'),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return KelilingLayang(); }));
                  },
                )),
                SizedBox(height: 16.0),
              ],
        ),
      ),
     );
  }
}
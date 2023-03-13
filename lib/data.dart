import 'package:flutter/material.dart';


class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/photo.jpeg', width: 380, height: 280,),
            SizedBox(height: 16.0),
            Text(
              'Nama: Fajar Putra Setiawan',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'NIM: 123200092',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Kelas: IF-B',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Hobbi: Bermain Game Online',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

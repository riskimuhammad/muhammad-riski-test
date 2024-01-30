import 'package:flutter/material.dart';

class TheraNotFound extends StatelessWidget {
  const TheraNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          SizedBox(height: 100),
          SizedBox(
            width: 90,
            child: Image.network(
                'https://premierecreative.com/pitchdeck/2019/10/404-errors-1024x574.png'),
          ),
          SizedBox(height: 30),
          Text(
            "Nomor Meter Tidak Tersedia",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          Text(
            "Untuk informasi lebih lanjut, silahkan hubungi Building Management.",
            style: TextStyle(color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

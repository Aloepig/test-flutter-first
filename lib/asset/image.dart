import 'package:flutter/material.dart';

void main() {
  runApp(MyImage());
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("이미지를 보세요."),
            ),
            body: Column(
              children: [Image(image: NetworkImage("https://file.fanca.io/local/alarm/alarm-5938a14e-621a-4b5a-bfce-1210a6383e48.webp"))
                , Image(image: AssetImage("image/vote.webp"))
              ],
            )));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("IOS"),
        ),
        child: ListView(
          children: [
            CupertinoButton(child: Text("Hello"), onPressed: (){})
          ],
        ),
      )
    );

  }
}

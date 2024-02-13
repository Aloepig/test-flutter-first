import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListWidget();
  }
}

class _ListWidget extends State {
  List<Widget> widgetList = [
    RedItemWidget(),
    BlueItemWidget(),
  ];

  void onChange() {
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widgetList.length);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Widget key 확인')),
          body: Column(
            children: [
              Row(
                children: widgetList,
              ),
              ElevatedButton(onPressed: onChange, child: Text("toogle"))
            ],
          )),
    );
  }
}

class RedItemWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ColorItemWidget(Colors.red);
  }
}

class BlueItemWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ColorItemWidget(Colors.blue);
  }
}

class ColorItemWidget extends State {
  Color color;

  ColorItemWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}

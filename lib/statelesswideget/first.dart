import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListWidgetState();
  }
}

class _ListWidgetState extends State<MyApp> {
  List<Widget> widgetList = [
    ColorItemWidget(Colors.red),
    ColorItemWidget(Colors.blue)
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

class ColorItemWidget extends StatelessWidget {
  Color color;

  ColorItemWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      color: color,
      width: 150,
      height: 150,
    ),);
  }
}

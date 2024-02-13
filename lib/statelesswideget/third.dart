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
    ItemWidget(Colors.red, key: ValueKey(100)),
    ItemWidget(Colors.blue, key: UniqueKey()),
  ];

  void onChange() {
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {

    var key1 = widgetList.elementAt(0).key;
    var key2 = widgetList.elementAt(1).key;

    final controller = TextEditingController();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Widget key 확인')),
          body: Column(
            children: [
              Row(
                children: widgetList,
              ),
              ElevatedButton(onPressed: onChange, child: Text("toogle")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 50, height: 50, color: Colors.red,),
                  Container(width: 50, height: 50, color: Colors.green,),
                  Container(width: 50, height: 50, color: Colors.blue,),
                ],
              ),
              TextField(              controller: controller,),
              ElevatedButton(onPressed: (){
                print(controller.text);
              }, child: Text("submit")),
            ],
          ),
      ),
    );
  }
}

class ItemWidget extends StatefulWidget {
  Color color;
  ItemWidget(this.color, {super.key});

  @override
  State<StatefulWidget> createState() {
    return ColorItemWidget(color);
  }
}

class ColorItemWidget extends State<ItemWidget> {
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
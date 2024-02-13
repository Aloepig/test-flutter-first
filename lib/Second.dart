import 'package:flutter/material.dart';

/// bjlee@contentsmadang.com
/// 2024 2월 13
///
class Second extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const List data = [
      {
        "title": "이벤트",
        "value": 2024,
      },
      {
        "title": "이벤트",
        "value": 2023,
      },
      {
        "title": "이벤트",
        "value": 2022,
      },
      {
        "title": "이벤트",
        "value": 2021,
      }
    ];

    List<MyEvent> convertDataToMyEvents(List data) {
      return data.map((item) => MyEvent(item['title'], item['value'])).toList();
    }

    final myEvents = convertDataToMyEvents(data);

    return Scaffold(
        bottomNavigationBar:
        Container(width: 100, height: 100, color: Colors.yellow),
        appBar: AppBar(
            centerTitle: true,
            title: const Text("TopAppBar"),
            toolbarTextStyle: const TextStyle(fontSize: 20)),
        body: Align(
          alignment: Alignment.topLeft,
          child: ListView(
            children: myEvents,),
        )
    );
  }
}

class MyEvent extends StatelessWidget {
  String title;
  int value;

  MyEvent(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.yellow,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [Text(title), Text(value.toString())],
                ),
              )),
          Expanded(flex: 1, child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}

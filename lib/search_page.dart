import "package:flutter/material.dart";

import 'create_page.dart';

class SerachPage extends StatefulWidget {
  @override
  _SerachPageState createState() => _SerachPageState();
}

class _SerachPageState extends State<SerachPage> {
  Widget buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // 컬럼 몇 개? (3줄)
            crossAxisCount: 3,
            // 가로와 세로의 비율? (2면 가로가 세로의 2배)
            childAspectRatio: 1.0,
            // 각 그리드 아이템 별 사이의 간격 main이 가로, cross가 세로
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0),
        // 아이템 몇 개?
        itemCount: 5,
        itemBuilder: (context, index) {
          return buildListItem(context, index);
        });
  }

  Widget buildListItem(BuildContext context, int index) {
    return Image.network("https://placeimg.com/64/64/2", fit: BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search")),
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreatePage()));
        },
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.create),
      ),
    );
  }
}

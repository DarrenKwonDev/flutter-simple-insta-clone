import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: <Widget>[
                Stack(children: <Widget>[
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://placeimg.com/64/64/2"),
                    ),
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      width: 80.0,
                      height: 80.0,
                      child:
                          Stack(alignment: Alignment.center, children: <Widget>[
                        SizedBox(
                          width: 27.0,
                          height: 27.0,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.add),
                          ),
                        ),
                      ]))
                ]),
                Padding(padding: EdgeInsets.all(5.0)),
                Text("이름",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0))
              ]),
              Text("0\n게시물",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0)),
              Text("0\n팔로워",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0)),
              Text("0\n팔로잉",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0)),
            ]));
  }

  Widget buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {},
        )
      ],
    );
  }
}

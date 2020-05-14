import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Instagram Clone", style: TextStyle(color: Colors.black))),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
                child: Column(
              children: <Widget>[
                Text("welcome to instagram clone",
                    style: TextStyle(fontSize: 24.0)),
                Padding(padding: EdgeInsets.all(8.0)),
                Text("if you want to see Photos and Video, Follow"),
                Padding(padding: EdgeInsets.all(15.0)),
                SizedBox(
                  width: 260.0,
                  // height: 240.0,
                  child: Card(
                    elevation: 4.0,
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(15.0)),
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage("https://placeimg.com/64/64/2"),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Text("dummy@gmail.com",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text("username"),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                  "https://placeimg.com/64/64/2",
                                  fit: BoxFit.cover,
                                )),
                            Padding(padding: EdgeInsets.all(2.0)),
                            SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                  "https://placeimg.com/64/64/2",
                                  fit: BoxFit.cover,
                                )),
                            Padding(padding: EdgeInsets.all(2.0)),
                            SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                  "https://placeimg.com/64/64/2",
                                  fit: BoxFit.cover,
                                )),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(8.0)),
                        RaisedButton(
                          child: Text("Follow"),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                        Padding(padding: EdgeInsets.all(8.0)),
                      ],
                    ),
                  ),
                )
              ],
            )),
          ),
        ));
  }
}

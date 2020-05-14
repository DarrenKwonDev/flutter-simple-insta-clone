import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  File _image;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: _getImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _image == null
              ? Text("No image")
              : SizedBox(
                  width: 250.0, height: 250.0, child: Image.file(_image)),
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(hintText: "내용을 입력하세요"),
          )
        ],
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      actions: <Widget>[IconButton(icon: Icon(Icons.send), onPressed: () {})],
    );
  }

  Future<void> _getImage() async {
    File Image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = Image;
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'interactive_canvas.dart';

class CanvasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.photo_camera_outlined),
              onPressed: () => _showOptions(context))
        ],
      ),
      body: SafeArea(
        child: InteractiveCanvas(),
      ),
    );
  }

  void _showOptions(BuildContext context) => showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            height: 150,
            child: Column(children: <Widget>[
              ListTile(
                  leading: Icon(Icons.photo_camera),
                  title: Text("Take a picture from camera")),
              ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text("Choose from photo library"))
            ]));
      });
}

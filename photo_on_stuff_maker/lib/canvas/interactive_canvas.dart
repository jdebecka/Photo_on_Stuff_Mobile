import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InteractiveCanvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: InteractiveViewer(
      boundaryMargin: EdgeInsets.all(20.0), child: Container(color: Colors.blue,),
    ));
  }
}

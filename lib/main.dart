import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor:Colors.red,
          //   title: const Text('Home'),
          // ),
          // body: const Center(child: Text('Hello World'))
        body: Center(
          child: MyWidget(true),
        )
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget{
  final bool loading;

  MyWidget(this.loading);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return loading ? const CircularProgressIndicator(
      color: Colors.cyan,
    ) : const Text('no loading');
    // throw UnimplementedError();
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                height: 150,
              )),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                height: 150,
              )),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
                height: 150,
              ))
        ],
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      // width: 500,
      // height: 500,
      child: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.loose,
        children: [
          Container(
            color: Colors.blue,
            height: 300,
            width: 300,
          ),
          Positioned(
            top: 0,
            child: Container(
              color: Colors.green,
              height: 200,
              width: 200,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.pink,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Container(
              height: 100,
              color: Colors.red,
            )),
        Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.orange,
            )),
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.green,
            ))
      ],
    );
  }
}

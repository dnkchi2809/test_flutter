import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      width: 500,
      height: 500,
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(100),
      margin: const EdgeInsets.only(left: 100),
      // child: const Text(
      //   'ContainerWidget',
      //   style: TextStyle(fontSize: 30, color: Colors.white),
      // ),
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(
            Radius.circular(55),
          ),
          border: Border.all(width: 2, color: Colors.red)),
      transform: Matrix4.rotationZ(1),
    );
  }
}

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({super.key});

  void onPressed() {
    print('SizeBoxWidget');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // width: double.infinity,
      // height: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            minimumSize: const Size(300, 25),
            padding: const EdgeInsets.all(25),
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            elevation: 0,
            shadowColor: Colors.yellow,
            side: const BorderSide(width: 2, color: Colors.yellow)),
        child: const Text(
          'SizeBoxWidget',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: const Text('Home'),
        // ),
        body: RowWidget(),
      ),
    ),
    theme: ThemeData(
      fontFamily: 'Grafina',
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  // final bool loading;
  //
  // MyWidget(this.loading);

  @override
  Widget build(BuildContext context) {
    // return loading ? const CircularProgressIndicator(
    //   color: Colors.cyan,
    // ) : const Text('no loading');
    // throw UnimplementedError();

    //   return RichText(
    //       text: TextSpan(
    //           style: DefaultTextStyle.of(context).style,
    //           children: const <TextSpan>[
    //         TextSpan(text: 'Hello'),
    //         TextSpan(text: 'Red', style: TextStyle(color: Colors.red)),
    //         TextSpan(text: 'Text'),
    //       ]));
    // }

    return const Card(
      color: Colors.pink,
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
      child: Padding(
        padding: EdgeInsets.all(100.0),
        child: Text(
          'Text',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MyWidget2 extends StatefulWidget {
  final bool loading;

  const MyWidget2(this.loading, {super.key});

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<MyWidget2> {
  late bool _localLoading;

  @override
  void initState() {
    super.initState();
    _localLoading = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    return _localLoading
        ? const CircularProgressIndicator(
            color: Colors.cyan,
          )
        : FloatingActionButton(onPressed: onClickButton);
  }

  void onClickButton() {
    setState(() {
      _localLoading = true;
    });
  }
}

class TextButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextButtonWidgetState();
  }
}

class TextButtonWidgetState extends State<TextButtonWidget> {
  bool clicked = false;

  void onClickButton() {
    setState(() {
      clicked = !clicked;
    });
    print(clicked);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: TextButton.icon(
        onPressed: () {
          onClickButton();
        },
        style: TextButton.styleFrom(
            foregroundColor: !clicked ? Colors.white : Colors.pinkAccent,
            backgroundColor:
                !clicked ? CupertinoColors.systemGrey : Colors.black,
            minimumSize: const Size(300, 25),
            padding: const EdgeInsets.all(25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            elevation: 50,
            shadowColor: Colors.greenAccent.withOpacity(0.7),
            side: const BorderSide(width: 2, color: Colors.green),
            disabledForegroundColor: Colors.white,
            disabledBackgroundColor: CupertinoColors.systemGrey),
        icon: const Icon(
          CupertinoIcons.heart,
          size: 30,
        ),
        label: const Text(
          'TextButtonWidget',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  void onPressed() {
    print('ElevatedButtonWidget');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: ElevatedButton.icon(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              minimumSize: const Size(300, 25),
              padding: const EdgeInsets.all(25),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              elevation: 50,
              shadowColor: Colors.yellow,
              side: const BorderSide(width: 2, color: Colors.yellow)),
          icon: const Icon(
            Icons.headphones,
            size: 30,
          ),
          label: const Text(
            'ElevatedButtonWidget',
            style: TextStyle(fontSize: 28),
          )),
    );
  }
}

class OutlinedButtonWidget extends StatelessWidget {
  void onPressed() {
    print('OutlinedButtonWidget');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: OutlinedButton.icon(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(25),
          ),
          icon: const Icon(
            CupertinoIcons.hand_thumbsdown,
            size: 30,
          ),
          label: const Text(
            'OutlinedButtonWidget',
            style: TextStyle(fontSize: 28),
          )),
    );
  }
}

class ContainerWidget extends StatelessWidget {
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

class RowWidget extends StatelessWidget {
  void onPressed() {
    print('row');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      color: Colors.orange,
      padding: const EdgeInsets.all(50),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, foregroundColor: Colors.white),
              child: const Text(
                'Row',
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                minimumSize: const Size(300, 100),
              ),
              child: const Text(
                'Row',
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, foregroundColor: Colors.white),
              child: const Text(
                'Row',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}

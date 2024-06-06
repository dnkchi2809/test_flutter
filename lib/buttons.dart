import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget({super.key});

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
  const ElevatedButtonWidget({super.key});

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
  const OutlinedButtonWidget({super.key});

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

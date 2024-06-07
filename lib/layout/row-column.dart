import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

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

class ColumeWidget extends StatelessWidget {
  const ColumeWidget({super.key});

  void onPressed() {
    print('column');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      color: Colors.orange,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, foregroundColor: Colors.white),
              child: const Text(
                'column',
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
                'column',
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, foregroundColor: Colors.white),
              child: const Text(
                'column',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}

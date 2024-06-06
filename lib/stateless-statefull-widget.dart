import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestStatelessWidget extends StatelessWidget {
  const TestStatelessWidget({super.key});

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

class TestStatefulWidget extends StatefulWidget {
  final bool loading;

  const TestStatefulWidget(this.loading, {super.key});

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<TestStatefulWidget> {
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

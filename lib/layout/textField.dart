import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestInputWidget extends StatefulWidget {
  const TestInputWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TestInputWidgetState();
  }
}

class _TestInputWidgetState extends State<TestInputWidget> {
  bool focus = false;

  @override
  void initState() {
    super.initState();
  }

  void onTap() {
    setState(() {
      focus = true;
    });
  }

  void onTapOutside(e) {
    setState(() {
      focus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: focus ? Text("Label") : null,
        hintText: "hintText",
        filled: true,
        fillColor: focus ? Colors.pink : Colors.green,
        helperText: 'helperText',
      ),
      onChanged: (value) => print(value),
      keyboardType: TextInputType.number,
      maxLength: 10,
      onTap: onTap,
      onTapOutside: onTapOutside,
    );
  }
}

class MyTextWidget extends StatefulWidget {
  const MyTextWidget({
    super.key,
    // this.onChanged,
    // this.fillColor =
    //     const Color.fromRGBO(240, 240, 240, 1), // Selects a mid-range green.,
    // this.focusColor = const Color.fromRGBO(140, 240, 240, 1),
  });

  // final ValueChanged<String>? onChanged;
  // final Color? fillColor;
  // final Color? focusColor;

  @override
  State<MyTextWidget> createState() => _MyTextWidgetState();
}

class _MyTextWidgetState extends State<MyTextWidget> {
  late FocusNode _myFocusNode;
  final ValueNotifier<bool> _myFocusNotifier = ValueNotifier<bool>(false);

  // final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _myFocusNode = FocusNode();
    _myFocusNode.addListener(_onFocusChange);
    // myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    _myFocusNode.removeListener(_onFocusChange);
    _myFocusNode.dispose();
    _myFocusNotifier.dispose();
    // myController.dispose();

    super.dispose();
  }

  void _onFocusChange() {
    _myFocusNotifier.value = _myFocusNode.hasFocus;
  }

  // void _printLatestValue() {
  //   final text = myController.text;
  //   print('Second text field: $text (${text.characters.length})');
  // }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _myFocusNotifier,
      builder: (_, isFocus, child) {
        return TextField(
          // controller: myController,
          focusNode: _myFocusNode,
          decoration: InputDecoration(
              label: Text("Label"),
              hintText: "hintText",
              filled: true,
              fillColor: isFocus ? Colors.green : Colors.red,
              helperText: 'helperText'),
          onChanged: (value) => print(value),
          keyboardType: TextInputType.number,
          maxLength: 10,
        );
      },
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 1000,
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              // label: Text('TextField'),
              icon: Icon(Icons.icecream_outlined),
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            autofocus: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
              labelStyle: TextStyle(color: Colors.red),
              focusedBorder: OutlineInputBorder(),
              fillColor: Colors.grey,
              filled: true,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const TextField(
              decoration: InputDecoration(
            hintText: 'Hint Text',
            errorText: 'Error Text',
            border: OutlineInputBorder(),
            contentPadding:
                EdgeInsets.only(left: 11, right: 3, top: 14, bottom: 104),
            errorStyle: TextStyle(fontSize: 9, height: 5.3),
          )),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:test_flutter/stateManagement/redux/reducer.dart';

import 'actions.dart';

class TestFlutterReduxApp extends StatelessWidget {
  final store = new Store<String>(changeColorReducer, initialState: '');

  TestFlutterReduxApp({super.key});

  void onPressed(String color) {
    store.dispatch(ChangeColorAction(color));
  }

  @override
  Widget build(BuildContext context) {
    print(store.reducer);
    return StoreProvider(
        store: store,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => onPressed('red'),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red),
                    child: const Text('Red'),
                  ),
                  ElevatedButton(
                    onPressed: () => onPressed('yellow'),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.yellow),
                    child: const Text('Yellow'),
                  ),
                  ElevatedButton(
                    onPressed: () => onPressed('green'),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green),
                    child: const Text('Green'),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              // Display text with color
              StoreConnector<String, String>(
                converter: (store) => store.state,
                builder: (context, color) {
                  return Text(
                    'This text changes color',
                    style:
                        TextStyle(color: _colorFromString(color), fontSize: 24),
                  );
                },
              ),
            ],
          ),
        ));
  }

  Color _colorFromString(String color) {
    switch (color) {
      case 'red':
        return Colors.red;
      case 'yellow':
        return Colors.yellow;
      case 'green':
        return Colors.green;
      default:
        return Colors.black;
    }
  }
}

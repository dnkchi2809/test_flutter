// reducer.dart
import 'actions.dart';

String changeColorReducer(String state, dynamic action) {
  if (action is ChangeColorAction) {
    return action.color;
  }
  return state;
}

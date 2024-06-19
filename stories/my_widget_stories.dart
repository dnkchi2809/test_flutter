import 'package:flutter/material.dart';
import 'widget/my_widget.dart'; // Đảm bảo đường dẫn chính xác tới widget của bạn

Widget defaultMyWidget() {
  return MyWidget(
    title: 'Default Title',
    description: 'This is the default description.',
  );
}

Widget customTitleMyWidget() {
  return MyWidget(
    title: 'Custom Title',
    description: 'This is the description with a custom title.',
  );
}

Widget longDescriptionMyWidget() {
  return MyWidget(
    title: 'Title',
    description:
        'This is a very long description to see how the widget handles it. ' *
            5,
  );
}

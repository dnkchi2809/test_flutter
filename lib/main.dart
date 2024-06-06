import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: const SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: const Text('Home'),
        // ),
        body: ImageAndCardWidget(),
      ),
    ),
    theme: ThemeData(
        // fontFamily: 'Belagia',
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

// var array = [{"username": "Nguyễn Văn A"}, {"email": 'abc@mail.com'}, {"address": "Hanoi"}];
class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  void onCancelPressed() {
    print('onCancelPressed');
  }

  void onSubmitPressed() {
    print('onSubmitPressed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            children: [
              SizedBox(
                  width: 150,
                  child: Text(
                    'username:',
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  )),
              SizedBox(
                  width: 800,
                  child: Text(
                    'Nguyễn Văn A',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ))
            ],
          ),
          const Row(
            children: [
              SizedBox(
                  width: 150,
                  child: Text(
                    'email:',
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  )),
              SizedBox(
                  width: 800,
                  child: Text(
                    'abc@mail.com',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ))
            ],
          ),
          const Row(
            children: [
              SizedBox(
                  width: 150,
                  child: Text(
                    'address:',
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  )),
              SizedBox(
                  width: 800,
                  child: Text(
                    'Hanoi',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: onCancelPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: onSubmitPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      )))
            ],
          )
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

class ImageAndCardWidget extends StatelessWidget {
  const ImageAndCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: NetworkImage(
              'https://img-cdn.xemgame.com/2022/10/15/Anya-Forger-trong-Spy-X-Family-1.jpg'),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          // alignment: Alignment.center,
        ),
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: Container(
        //     width: 500,
        //     height: 300,
        //     padding: EdgeInsets.all(10),
        //     margin: EdgeInsets.only(bottom: 50),
        //     // color: Colors.white,
        //     decoration: const BoxDecoration(
        //       color: Colors.white,
        //       // border: Border.all(
        //       //     color: Colors.pink, // Set border color
        //       //     width: 3.0), // Set border width
        //       borderRadius: const BorderRadius.all(
        //           Radius.circular(10.0)), // Set rounded corner radius
        //       // boxShadow: const [
        //       //   BoxShadow(
        //       //       blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
        //       // ]
        //     ),
        //     child: const Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Flexible(
        //           flex: 2,
        //           fit: FlexFit.loose,
        //           child: Text(
        //             "Anya",
        //             style: TextStyle(fontSize: 40),
        //           ),
        //         ),
        //         Flexible(
        //           flex: 5,
        //           fit: FlexFit.loose,
        //           child: Text(
        //               "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
        //               "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
        //               "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
        //               "It has survived not only five centuries, but also the leap into electronic typesetting, "
        //               "remaining essentially unchanged. It was popularised in the 1960s with the release of "
        //               "Letraset sheets containing Lorem Ipsum passages, and more recently with "
        //               "desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        Positioned(
          bottom: 20,
          left: 10,
          right: 10,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Anya",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, "
                      "remaining essentially unchanged. It was popularised in the 1960s with the release of "
                      "Letraset sheets containing Lorem Ipsum passages, and more recently with "
                      "desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

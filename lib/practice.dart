// var array = [{"username": "Nguyễn Văn A"}, {"email": 'abc@mail.com'}, {"address": "Hanoi"}];
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

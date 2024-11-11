import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Column(
        children: [
          // basic flushbar
          _buildBasicFlushbar(),
          const SizedBox(height: 10),
          // flushbar with custom icon
          _buildCustomIconFlushbar(),
          const SizedBox(height: 10),
          // flushbar with all properties
          _buildAllPropertiesFlushbar(),
        ],
      ),
    );
  }

  Widget _buildAllPropertiesFlushbar() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 30,
        color: Colors.green,
        child: InkWell(
          onTap: () {
            Flushbar(
              title: 'Hello',
              message: 'This is a flushbar',
              titleColor: Colors.amber,
              titleSize: 20,
              messageColor: Colors.blue,
              messageSize: 15,
              duration: const Duration(seconds: 3),
              leftBarIndicatorColor: Colors.amber,

              // titleText: const Text('This is a title'),
              // background gradient

              // backgroundGradient: const LinearGradient(colors: [
              //   Colors.blueGrey,
              //   Colors.black,
              // ]),

              // box shadows

              // boxShadows: [
              //   BoxShadow(
              //       color: Colors.blue.withOpacity(0.5),
              //       offset: const Offset(0.0, 5.0),
              //       blurRadius: 10.0)
              // ],

              // forwardAnimationCurve: Curves.fastEaseInToSlowEaseOut,
              // reverseAnimationCurve: Curves.bounceInOut,
              // flushbarStyle: FlushbarStyle.GROUNDED,
              // flushbarPosition: FlushbarPosition.TOP, // default is bottom
              // showProgressIndicator: true,
              // backgroundColor: Colors.green,
              mainButton: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Click me',
                    style: TextStyle(color: Colors.white)),
              ),
            ).show(Get.context!);
          },
          child: const Center(
            child: Text('All Properties Flushbar'),
          ),
        ),
      ),
    );
  }

  Widget _buildCustomIconFlushbar() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 30,
        color: Colors.red,
        child: InkWell(
          onTap: () {
            Flushbar(
              title: 'Hello',
              message: 'This is a flushbar',
              duration: const Duration(seconds: 3),
              icon: const Icon(Icons.info, color: Colors.white),
            ).show(Get.context!);
          },
          child: const Center(child: Text('Custom Icon Flushbar')),
        ),
      ),
    );
  }

  Widget _buildBasicFlushbar() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 30,
        color: Colors.blue,
        child: InkWell(
          onTap: () {
            Flushbar(
              title: 'Hello',
              message: 'This is a flushbar',
              duration: const Duration(seconds: 3),
            ).show(Get.context!);
          },
          child: const Center(
            child: Text('Basic Flushbar'),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:web/controller/encryp_controller.dart';

// const Color blue = Color(0xff121B2C);

// const Color butcolor = Color(0xff33384B);

const Color textcolor = Colors.black;
const Color blue = Colors.white;
const Color butcolor = Colors.blue;

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  EncryptedControler encryptedControler = EncryptedControler();
  final _textfirld = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      endDrawerEnableOpenDragGesture: false,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(
                  // label: Text('INPUT'),
                  ),
              cursorColor: textcolor,
              style: const TextStyle(color: textcolor),
              controller: _textfirld,
              onChanged: (value) {
                encryptedControler.text.value = value;
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Obx(() => SelectableText(
                          encryptedControler.result.value,
                          style: const TextStyle(color: textcolor),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoButton(
                minSize: 5,
                padding: const EdgeInsets.all(10.0),
                color: butcolor,
                child: const Text('ENCRYPT'),
                onPressed: () {
                  encryptedControler.encrypt();
                  _textfirld.clear();
                }),
            const SizedBox(height: 10),
            CupertinoButton(
                minSize: 5,
                padding: const EdgeInsets.all(10.0),
                color: butcolor,
                child: const Text('DECRYPT'),
                onPressed: () {
                  encryptedControler.decrypt();
                  _textfirld.clear();
                }),
          ],
        ),
      ),
    );
  }
}

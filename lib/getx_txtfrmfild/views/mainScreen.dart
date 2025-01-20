import 'package:flutter/material.dart';
import 'package:flutter_mini/getx_txtfrmfild/models/textEditingController.dart';
import 'package:get/get.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextController controller = Get.put(TextController());
    final _clear = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Your name is : ${controller.text}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _clear,
                onChanged: (value) {
                  controller.updateText(value);
                },
                decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  _clear.clear();
                },
                child: Text(
                  "Clear",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}

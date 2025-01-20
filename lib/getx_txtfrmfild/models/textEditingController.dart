import 'package:get/get.dart';

class TextController extends GetxController {
  var text = ''.obs;

  void updateText(String newText) {
    text.value = newText;
  }
}

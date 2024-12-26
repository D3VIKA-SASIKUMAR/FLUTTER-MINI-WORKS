class Validationn {
  static String? validateInput(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName cannot be empty';
    }
    return null;
  }

  static Future<bool> login(String username, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return username == 'admin' && password == 'password';
  }
}

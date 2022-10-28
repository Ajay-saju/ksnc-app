class FormValidation {
  // String? password;
  String? emailValidation(value) {
    const regVal =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
    if (value == null) {
      return 'Enter Email ';
    } else if (!RegExp(regVal).hasMatch(value)) {
      return 'Enter valid email';
    } else {
      return null;
    }
  }

  String? passwordValidation(value) {
    // password = value;

    if (value!.isNotEmpty && value.length > 3) {
      return null;
    } else if (value.length < 3 && value.isNotEmpty) {
      return "Your Password is Short";
    } else {
      // logController.sizedtext();
      return 'Required Password';
    }
  }
}

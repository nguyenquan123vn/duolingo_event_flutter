class EmailPasswordFieldValidator {
  static String usernameValidate(String value) {
    if (value.isEmpty || value.length < 4) {
      return 'Please enter atleast 4 characters.';
    } else if (value.contains(' ')) {
      return 'Your user name must not contains space.';
    }
    return null;
  }

  static String emailValidate(String value) {
    RegExp re = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))',
    );
    if (value.isEmpty) {
      return 'Your email should not be empty!';
    } else if (!re.hasMatch(value)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  static String passwordValidate(String value) {
    RegExp re = RegExp(
      r'^(?=.*[a-zA-Z0-9]).{6,}',
    );
    if (value.isEmpty) {
      return 'Your password should not be empty!';
    } else if (!re.hasMatch(value)) {
      return 'Password must atleast 6 characters.';
    }
    return null;
  }
}

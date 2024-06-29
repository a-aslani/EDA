class MessagePatterns {
  static String maxLen() {
    return "";
  }

  static String invalidEmail() {
    return "The Email must be a valid email";
  }

  static String isRequired(String fieldName) {
    return "The $fieldName must not be empty";
  }
}
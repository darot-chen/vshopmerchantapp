class BaseException implements Exception {
  String _message;

  BaseException([String message = 'BaseException']) {
    _message = message;
  }

  String get message {
    return _message;
  }

  String toString() {
    return _message;
  }
}

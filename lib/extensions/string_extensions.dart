extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  int onlyNumber() {
    var number = this.replaceAll(RegExp(r'[^0-9]'), '');
    return int.tryParse(number);
  }
}

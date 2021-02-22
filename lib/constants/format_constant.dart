class FormatConstant {
  static RegExp username = RegExp(r"^[a-zA-z_][a-zA-Z0-9]*$");

  ///reference: https://regex101.com/r/DsaRfI/1
  static RegExp phoneNumber = RegExp(r"^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$");
}

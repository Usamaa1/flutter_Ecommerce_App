String? validateCardNumber(String? value) {
  if (value == null || value.isEmpty) {
    return "Card number is required";
  }
  RegExp regExp = RegExp(r'^[0-9]{16}$');
  if (!regExp.hasMatch(value)) {
    return "Card number must be 16 digits long";
  }
  return null;
}

String? validateExpirationDate(String? value) {
  if (value == null || value.isEmpty) {
    return "Expiration date is required";
  }
  RegExp regExp = RegExp(r'^(0[1-9]|1[0-2])\-\d{2}$');

  if (!regExp.hasMatch(value)) {
    return "Expiration date must be in MM/YY format";
  }
  return null;
}

String? validateCVV(String? value) {
  if (value == null || value.isEmpty) {
    return "CVV is required";
  }
  RegExp regExp = RegExp(r'^[0-9]{3}$');
  if (!regExp.hasMatch(value)) {
    return "CVV must be 3 digits long";
  }
  return null;
}


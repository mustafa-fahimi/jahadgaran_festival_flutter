/// All TextField validators are here
class FormValidators {
  factory FormValidators() => _singleton;

  FormValidators._();
  static final FormValidators _singleton = FormValidators._();

  /// Check if TextField is empty
  String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الزامی*';
    }
    return null;
  }

  /// Check if TextField text has the required `length`
  String? _lengthValidator(String value, int minLength) {
    if (value.length < minLength) {
      return 'minimum $minLength character';
    }
    return null;
  }

  String? fullnameValidator(String? value) {
    var res = emptyValidator(value);
    return res ??= _lengthValidator(value!, 3);
  }

  String? phoneNumberValidator(String? value) {
    const pattern = r'^09[0|1|2|3|9][0-9]{8}$';
    final regExp = RegExp(pattern, caseSensitive: false);

    var res = emptyValidator(value);
    return res ??= regExp.hasMatch(value!) ? null : 'wrong_phone_number';
  }

  String? phoneNumberWithCountryCodeValidator(String? value) {
    const pattern = r'^(?:0|98|\+98|0098)(9[0|1|2|3|9][0-9]{8})$';
    final regExp = RegExp(pattern, caseSensitive: false);

    var res = emptyValidator(value);
    return res ??= regExp.hasMatch(value!) ? null : 'wrong_phone_number';
  }

  String? emailValidator(String? value) {
    var res = emptyValidator(value);
    return res ??= !RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(value!)
        ? 'wrong_email'
        : null;
  }

  String? shabaNumberValidator(String? value) {
    if (value != null && value.isNotEmpty) {
      return !RegExp(
        r'^(?:IR)(?=.{24}$)[0-9]*$',
      ).hasMatch(value)
          ? 'wrong_shaba_number'
          : null;
    }
    return null;
  }
}

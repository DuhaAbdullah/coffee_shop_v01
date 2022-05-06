import '../../language/generated/key_lang.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:validators/validators.dart' as validators;

class AppValidator{
   // * message
  static final _messageEnterValue = KeyLang.enterValue.tr();
  static final _messageCorrectEmail = KeyLang.errorEmail.tr();
  static final _messageCorrectPass = KeyLang.errorPass.tr();
  static final _messageCorrectCPass = KeyLang.errorConfirmPass.tr();

  
  // * Email
  static String? isEmail(String? value) {
    final String? valueTrim = value?.trim();
    if (valueTrim?.isEmpty ?? true) {
      return _messageEnterValue;
    } else if (!validators.isEmail(valueTrim!)) {
      return _messageCorrectEmail;
    }
  }
}
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:riverpod_skeleton/resources/resource_helper.dart';

final emailValidator = FormBuilderValidators.compose(
  [
    FormBuilderValidators.required(),
    FormBuilderValidators.email(),
    FormBuilderValidators.minLength(6, errorText: R.string.error_invalid_email)
  ]
);

// A list of validators for the password field, including complexity rules.
final passwordValidator = FormBuilderValidators.compose([
  FormBuilderValidators.required(),
  FormBuilderValidators.minLength(8, errorText: R.string.error_invalid_password_length),
  FormBuilderValidators.match(
    RegExp(r'(?=.*[A-Z])'),
    errorText: R.string.error_password,
  ),
  FormBuilderValidators.match(
    RegExp(r'(?=.*[!@#\$%^&*()_+-=|;:<>,.?/~`{}()\[\]])'),
    errorText: R.string.error_password,
  ),
]);
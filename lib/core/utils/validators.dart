import 'package:form_builder_validators/form_builder_validators.dart';

final emailValidator = FormBuilderValidators.compose(
  [
    FormBuilderValidators.required(),
    FormBuilderValidators.email(),
    FormBuilderValidators.minLength(6, errorText: 'Email must be more than 6 characters')
  ]
);

// A list of validators for the password field, including complexity rules.
final passwordValidator = FormBuilderValidators.compose([
  FormBuilderValidators.required(),
  FormBuilderValidators.minLength(8, errorText: 'Password must be more than 7 characters.'),
  FormBuilderValidators.match(
    RegExp(r'(?=.*[A-Z])'),
    errorText: 'Password must contain at least one uppercase letter.',
  ),
  FormBuilderValidators.match(
    RegExp(r'(?=.*[!@#\$%^&*()_+-=|;:<>,.?/~`{}()\[\]])'),
    errorText: 'Password must contain at least one special character.',
  ),
]);
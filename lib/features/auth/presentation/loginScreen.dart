import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:riverpod_skeleton/resources/app_images.dart';
import 'package:riverpod_skeleton/core/utils/validators.dart';
import 'package:riverpod_skeleton/features/auth/providers/authNotifier.dart';
import 'package:riverpod_skeleton/resources/resource_helper.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  // A global key to hold the state of our form. This allows us to access
  // the form's state and trigger validation.
  final _formKey = GlobalKey<FormBuilderState>();

  // State variable to track password visibility
  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    // Watch the auth state to show loading/error messages
    final authState = ref.watch(authProvider);

    // Listen for auth state changes to show a SnackBar for errors
    ref.listen(authProvider, (previous, next) {
      if (next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.error.toString())),
        );
      }
    });

    return _buildLoginScaffold(context, ref);
  }

  Widget _buildLoginScaffold(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(title: Text(R.string.text_login)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SvgPicture.asset(R.image.flutterBanner, height: 32,),
            FormBuilder(
              key: _formKey,
              child: Column(
                children: [
                  _LoginFormField(
                    name: 'email',
                    labelText: R.string.text_email,
                    validator: emailValidator,
                  ),
                  const SizedBox(height: 16),
                  _LoginFormField(
                    name: 'password',
                    labelText: R.string.text_password,
                    obscureText: _isObscureText,
                    validator: passwordValidator,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscureText = !_isObscureText;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (authState.isLoading)
                    const CircularProgressIndicator()
                  else
                    ElevatedButton(
                      onPressed: () {
                        // Validate the form before attempting to log in.
                        if (_formKey.currentState!.saveAndValidate()) {
                          final formData = _formKey.currentState!.value;
                          ref
                              .read(authProvider.notifier)
                              .login(formData['email'], formData['password']);
                        }
                      },
                      child: const Text('Login'),
                    ),
                  if (authState.hasError)
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        authState.error.toString(),
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginFormField extends StatelessWidget {
  final String name;
  final String labelText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;

  const _LoginFormField({
    required this.name,
    required this.labelText,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The separate label for the field
        Text(
          labelText,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyLarge?.color,
            fontSize: R.dimen.text_size_normal,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        FormBuilderTextField(
          name: name,
          obscureText: obscureText,
          validator: validator,
          decoration: InputDecoration(
            // No labelText here; it's handled by the Text widget above
            filled: true,
            fillColor: Colors.white,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

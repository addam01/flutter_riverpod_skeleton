// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(errorDetails) =>
      "An unexpected error occurred. ${errorDetails}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "error_generic": m0,
    "error_invalid_email": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email address.",
    ),
    "error_invalid_password_length": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 6 characters.",
    ),
    "error_login_failed": MessageLookupByLibrary.simpleMessage(
      "Login failed. Please try again.",
    ),
    "error_password": MessageLookupByLibrary.simpleMessage(
      "Password must contain at least one uppercase letter and one special character.",
    ),
    "error_required_field": MessageLookupByLibrary.simpleMessage(
      "This field is required.",
    ),
    "screen_dashboard_title": MessageLookupByLibrary.simpleMessage("Dashboard"),
    "screen_login_title": MessageLookupByLibrary.simpleMessage("Login Screen"),
    "text_email": MessageLookupByLibrary.simpleMessage("Email"),
    "text_loading": MessageLookupByLibrary.simpleMessage("Loading..."),
    "text_login": MessageLookupByLibrary.simpleMessage("Login"),
    "text_logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "text_password": MessageLookupByLibrary.simpleMessage("Password"),
    "text_refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
    "text_submit": MessageLookupByLibrary.simpleMessage("Submit"),
    "text_welcome": MessageLookupByLibrary.simpleMessage("Welcome to the App"),
  };
}

// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_ar_SA.dart' as messages_ar_sa;
import 'messages_en_US.dart' as messages_en_us;
import 'messages_fr_FR.dart' as messages_fr_fr;
import 'messages_te_IN.dart' as messages_te_in;
import 'messages_hi_IN.dart' as messages_hi_in;
import 'messages_ur_IN.dart' as messages_ur_in;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'ar_SA': () => new Future.value(null),
  'en_US': () => new Future.value(null),
  'fr_FR': () => new Future.value(null),
  'te_IN': () => new Future.value(null),
  'hi_IN': () => new Future.value(null),
  'ur_IN': () => new Future.value(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'ar_SA':
      return messages_ar_sa.messages;
    case 'en_US':
      return messages_en_us.messages;
    case 'fr_FR':
      return messages_fr_fr.messages;
    case 'te_IN':
      return messages_te_in.messages;
    case 'hi_IN':
      return messages_hi_in.messages;
    case 'ur_IN':
      return messages_ur_in.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  var availableLocale = Intl.verifiedLocale(
      localeName, (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return new Future.value(false);
  }
  var lib = _deferredLibraries[availableLocale];
  await (lib == null ? new Future.value(false) : lib());
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  var actualLocale =
      Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `feed`
  String get feed {
    return Intl.message('feed', name: 'feed', desc: '', args: []);
  }

  /// `Bookmarks`
  String get bookmarks {
    return Intl.message('Bookmarks', name: 'bookmarks', desc: '', args: []);
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `For You`
  String get for_you {
    return Intl.message('For You', name: 'for_you', desc: '', args: []);
  }

  /// `Top Stories`
  String get top_stories {
    return Intl.message('Top Stories', name: 'top_stories', desc: '', args: []);
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `Business`
  String get business {
    return Intl.message('Business', name: 'business', desc: '', args: []);
  }

  /// `Entertainment`
  String get entertainment {
    return Intl.message(
      'Entertainment',
      name: 'entertainment',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get health {
    return Intl.message('Health', name: 'health', desc: '', args: []);
  }

  /// `Science`
  String get science {
    return Intl.message('Science', name: 'science', desc: '', args: []);
  }

  /// `Sports`
  String get sports {
    return Intl.message('Sports', name: 'sports', desc: '', args: []);
  }

  /// `Technology`
  String get technology {
    return Intl.message('Technology', name: 'technology', desc: '', args: []);
  }

  /// `Politics`
  String get politics {
    return Intl.message('Politics', name: 'politics', desc: '', args: []);
  }

  /// `Food`
  String get food {
    return Intl.message('Food', name: 'food', desc: '', args: []);
  }

  /// `Travel`
  String get travel {
    return Intl.message('Travel', name: 'travel', desc: '', args: []);
  }

  /// `Appearance`
  String get appearance {
    return Intl.message('Appearance', name: 'appearance', desc: '', args: []);
  }

  /// `Dark Mode`
  String get dark_mode {
    return Intl.message('Dark Mode', name: 'dark_mode', desc: '', args: []);
  }

  /// `Light Mode`
  String get light_mode {
    return Intl.message('Light Mode', name: 'light_mode', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

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

  /// `Latest`
  String get latest {
    return Intl.message('Latest', name: 'latest', desc: '', args: []);
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `Education`
  String get education {
    return Intl.message('Education', name: 'education', desc: '', args: []);
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

  /// `Crime`
  String get crime {
    return Intl.message('Crime', name: 'crime', desc: '', args: []);
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

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Manage Interests`
  String get manage_interests {
    return Intl.message(
      'Manage Interests',
      name: 'manage_interests',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `About App`
  String get about_app {
    return Intl.message('About App', name: 'about_app', desc: '', args: []);
  }

  /// `About Developer`
  String get about_developer {
    return Intl.message(
      'About Developer',
      name: 'about_developer',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Search Results`
  String get search_results {
    return Intl.message(
      'Search Results',
      name: 'search_results',
      desc: '',
      args: [],
    );
  }

  /// `No Search done yet`
  String get no_search_done_yet {
    return Intl.message(
      'No Search done yet',
      name: 'no_search_done_yet',
      desc: '',
      args: [],
    );
  }

  /// `No Content Available`
  String get no_content_available {
    return Intl.message(
      'No Content Available',
      name: 'no_content_available',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message('Unavailable', name: 'unavailable', desc: '', args: []);
  }

  /// `Recently`
  String get recently {
    return Intl.message('Recently', name: 'recently', desc: '', args: []);
  }

  /// `Similar Articles`
  String get similar_articles {
    return Intl.message(
      'Similar Articles',
      name: 'similar_articles',
      desc: '',
      args: [],
    );
  }

  /// `No Similar Articles`
  String get no_similar_articles {
    return Intl.message(
      'No Similar Articles',
      name: 'no_similar_articles',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `Personalize Your \n Feed`
  String get first_on_boarding_title_text {
    return Intl.message(
      'Personalize Your \n Feed',
      name: 'first_on_boarding_title_text',
      desc: '',
      args: [],
    );
  }

  /// `Your News, Your Way`
  String get second_on_boarding_title_text {
    return Intl.message(
      'Your News, Your Way',
      name: 'second_on_boarding_title_text',
      desc: '',
      args: [],
    );
  }

  /// `Never Lose a Story`
  String get third_on_boarding_title_text {
    return Intl.message(
      'Never Lose a Story',
      name: 'third_on_boarding_title_text',
      desc: '',
      args: [],
    );
  }

  /// `Follow the topics you care about and hide what you don't ,\n to create a news experience that is relevant to you.`
  String get first_on_boarding_desc_text {
    return Intl.message(
      'Follow the topics you care about and hide what you don\'t ,\n to create a news experience that is relevant to you.',
      name: 'first_on_boarding_desc_text',
      desc: '',
      args: [],
    );
  }

  /// `Search for topics you love and \n customize your feed with categories \n that matter to you.`
  String get second_on_boarding_desc_text {
    return Intl.message(
      'Search for topics you love and \n customize your feed with categories \n that matter to you.',
      name: 'second_on_boarding_desc_text',
      desc: '',
      args: [],
    );
  }

  /// `Never lose an interesting article again. \n Bookmark stories with a single tap and \n read them anytime, even offline.`
  String get third_on_boarding_desc_text {
    return Intl.message(
      'Never lose an interesting article again. \n Bookmark stories with a single tap and \n read them anytime, even offline.',
      name: 'third_on_boarding_desc_text',
      desc: '',
      args: [],
    );
  }

  /// `Customize Your News Feed`
  String get empty_feed_title_text {
    return Intl.message(
      'Customize Your News Feed',
      name: 'empty_feed_title_text',
      desc: '',
      args: [],
    );
  }

  /// `Personalizing your feed with favorite topics \n will provide you with a curated news \n experience tailored just for you.`
  String get empty_feed_desc_text {
    return Intl.message(
      'Personalizing your feed with favorite topics \n will provide you with a curated news \n experience tailored just for you.',
      name: 'empty_feed_desc_text',
      desc: '',
      args: [],
    );
  }

  /// `Choose Your Interests`
  String get choose_your_interests {
    return Intl.message(
      'Choose Your Interests',
      name: 'choose_your_interests',
      desc: '',
      args: [],
    );
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

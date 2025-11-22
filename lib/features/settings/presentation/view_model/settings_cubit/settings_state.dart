import 'package:equatable/equatable.dart';

class SettingsState extends Equatable {
  final List<String> interests;
  final String locale;

  const SettingsState({required this.locale, required this.interests});

  factory SettingsState.initial() {
    return const SettingsState(interests: [],locale:"en");
  }

  SettingsState copyWith({List<String>? interests,String? locale}) {
    return SettingsState(interests: interests ?? this.interests,locale: locale ?? this.locale);
  }

  @override
  List<Object> get props => [interests,locale];
}

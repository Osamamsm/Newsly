import 'package:equatable/equatable.dart';

class SettingsState extends Equatable {
  final List<String> interests;

  const SettingsState({required this.interests});

  factory SettingsState.initial() {
    return const SettingsState(interests: []);
  }

  SettingsState copyWith({List<String>? interests}) {
    return SettingsState(interests: interests ?? this.interests);
  }

  @override
  List<Object> get props => [interests];
}

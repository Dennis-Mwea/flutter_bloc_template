import 'package:equatable/equatable.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an anauthenticated user.
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({required this.id, this.email, this.name, this.photo});

  final String? email;
  final String id;
  final String? name;
  final String? photo;

  static const empty = User(id: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, name, photo];
}

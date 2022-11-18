part of 'authenticate_bloc.dart';

abstract class AuthenticateEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignInRequested extends AuthenticateEvent {
  late final String identifier;
  late final String password;

  SignInRequested({required String pIdentifier, required String pPassword}) {
    identifier = pIdentifier;
    password = pPassword;
  }

  @override
  List<Object> get props => [identifier, password];
}

class SignOutRequested extends AuthenticateEvent {
  @override
  List<Object> get props => [];
}

class CreateUserRequested extends AuthenticateEvent {
  final User user;

  CreateUserRequested({required this.user});

  @override
  List<Object> get props => [user];
}

class PasswordResetRequested extends AuthenticateEvent {
  final String identifier;
  final String method;

  PasswordResetRequested({required this.identifier, required this.method});

  @override
  List<Object> get props => [identifier, method];
}

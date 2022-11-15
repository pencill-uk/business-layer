part of 'authenticate_bloc.dart';

abstract class AuthenticateEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignInRequested extends AuthenticateEvent {
  final String? identifier;
  final String? password;

  SignInRequested({this.identifier, this.password});

  @override
  List<Object> get props => [identifier!, password!];
}

class SignOutRequested extends AuthenticateEvent {
  @override
  List<Object> get props => [];
}

class CreateAccountRequested extends AuthenticateEvent {
  final Account account;

  CreateAccountRequested({required this.account});

  @override
  List<Object> get props => [account];
}

class CreateUserRequested extends AuthenticateEvent {
  final String identifier;
  final String password;

  CreateUserRequested({required this.identifier, required this.password});

  @override
  List<Object> get props => [identifier, password];
}

class PasswordResetRequested extends AuthenticateEvent {
  final String identifier;
  final String method;

  PasswordResetRequested({required this.identifier, required this.method});

  @override
  List<Object> get props => [identifier, method];
}

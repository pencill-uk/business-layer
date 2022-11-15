part of 'authenticate_bloc.dart';

abstract class AuthenticateState {}

/// Sign In States
class SignInUnknown extends AuthenticateState {}

class SignInInProgress extends AuthenticateState {}

class AuthenticationFailure extends AuthenticateState {}

class AuthenticationSuccess extends AuthenticateState {
  /// Properties
  final Account account;

  /// Constructor
  AuthenticationSuccess({required this.account});
}

/// Sign Out States
class SignOutProgressing extends AuthenticateState {}

class SignOutFailure extends AuthenticateState {}

class SignOutSuccess extends AuthenticateState {}

/// Create Account States
class CreateAccountInProgress extends AuthenticateState {}

class CreateAccountFailure extends AuthenticateState {}

class CreateAccountSuccess extends AuthenticateState {}

/// Password Reset States
class PasswordResetInProgress extends AuthenticateState {}

class PasswordResetFailure extends AuthenticateState {}

class PasswordResetSuccess extends AuthenticateState {}

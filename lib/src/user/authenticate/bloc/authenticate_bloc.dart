import 'package:bloc/bloc.dart';
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:data_layer/user_repo.dart';

import '../../../model/user.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  late final UserRepository _userRepository = UserRepository();

  AuthenticateBloc() : super(SignInUnknown()) {
    on<SignInRequested>((event, emit) async {
      emit(SignInInProgress());

      String userJson = await _userRepository.authenticateUser(
          pIdentifier: event.identifier, pPassword: event.password);

      try {
        if (userJson.isNotEmpty || userJson != "") {
          final decodedJson = json.decode(userJson);
          User user = User.fromMap(decodedJson['data']);
          emit(AuthenticationSuccess(user: user));
        } else {
          emit(AuthenticationFailure());
        }
      } catch (e) {
        emit(AuthenticationFailure());
      }
    });

    on<SignOutRequested>((event, emit) async {
      emit(SignOutProgressing());

      // try {
      //   await _userRepository.signOut();
      //   emit(SignOutSuccess());
      // } catch (e) {
      //   print(e);
      //   emit(SignOutFailure());
      // }
    });

    on<CreateUserRequested>((event, emit) async {
      // emit(CreateUserInProgress());

      // try {
      //   await _userRepository.createUser(
      //       pIdentifier: event.identifier, pPassword: event.password);
      //   emit(AuthenticationSuccess(
      //       user: User(
      //           meta: Meta(
      //               pagination:
      //                   Pagination(page: 1, pageCount: 1, pageSize: 1)))));
      // } catch (e) {
      //   if (kDebugMode) {
      //     print(e);
      //   }
      //   emit(AuthenticationFailure());
      //   return;
      // }
    });

    on<CreateUserRequested>((event, emit) async {
      //   emit(CreateUserInProgress());

      //   var result;
      //   try {
      //     result = await _userRepository. postUser(event.user.toMap());
      //     if (result != null && result is User) {
      //       emit(AuthenticationSuccess(user: result));
      //     } else {
      //       emit(AuthenticationFailure());
      //     }
      //   } catch (e) {
      //     print(e);
      //     emit(AuthenticationFailure());
      //     return;
      //   }
    });

    // on<CreateUserRequested>((event, emit) async {
    //   emit(CreateUserProgressing());

    //   var result;
    //   try {
    //     result = await _userRepository.createUser(
    //         pIdentifier: event.identifier, pPassword: event.password);
    //     if (result != null && result is User) {
    //       emit(AuthenticationSuccess(user: result));
    //     } else {
    //       emit(AuthenticationFailure());
    //     }
    //   } catch (e) {
    //     if (kDebugMode) {
    //       print(e);
    //     }
    //     emit(AuthenticationFailure());
    //     return;
    //   }
    // });
  }
}

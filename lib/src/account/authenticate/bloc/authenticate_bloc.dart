import 'package:bloc/bloc.dart';
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:data_layer/account_repo.dart';

import '../../../model/account.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  late final AccountRepository _accountRepository = AccountRepository();

  AuthenticateBloc() : super(SignInUnknown()) {
    on<SignInRequested>((event, emit) async {
      // emit(SignInInProgress());

      // String accountJson = await _accountRepository.(
      //     pIdentifier: event.identifier, pPassword: event.password);

      // try {
      //   if (accountJson.isNotEmpty || accountJson != "") {
      //     final decodedJson = json.decode(accountJson);
      //     Account account = Account.fromMap(decodedJson['data']);
      //     emit(AuthenticationSuccess(account: account));
      //   } else {
      //     emit(AuthenticationFailure());
      //   }
      // } catch (e) {
      //   emit(AuthenticationFailure());
      // }
    });

    on<SignOutRequested>((event, emit) async {
      emit(SignOutProgressing());

      // try {
      //   await _accountRepository.signOut();
      //   emit(SignOutSuccess());
      // } catch (e) {
      //   print(e);
      //   emit(SignOutFailure());
      // }
    });

    // on<CreateUserRequested>((event, emit) async {
    // emit(CreateAccountInProgress());

    // try {
    //   await _accountRepository.createUser(
    //       pIdentifier: event.identifier, pPassword: event.password);
    //   emit(AuthenticationSuccess(
    //       account: Account(
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
    // });

    on<CreateAccountRequested>((event, emit) async {
      emit(CreateAccountInProgress());

      var result;
      try {
        result = await _accountRepository.createAccount(event.account.toMap());
        if (result != null && result is Account) {
          emit(AuthenticationSuccess(account: result));
        } else {
          emit(AuthenticationFailure());
        }
      } catch (e) {
        print(e);
        emit(AuthenticationFailure());
        return;
      }
    });

    // on<CreateAccountRequested>((event, emit) async {
    //   emit(CreateAccountProgressing());

    //   var result;
    //   try {
    //     result = await _accountRepository.createAccount(
    //         pIdentifier: event.identifier, pPassword: event.password);
    //     if (result != null && result is Account) {
    //       emit(AuthenticationSuccess(account: result));
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

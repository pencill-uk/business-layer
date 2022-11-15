import 'package:business_layer/account_entity.dart';

void main() {
  AuthenticateBloc bloc = AuthenticateBloc();
  bloc.add(SignInRequested());

  Account account = Account(
      id: 0,
      accountName: 'Business Layer 1',
      accountType: 'parent',
      accountStatus: true,
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
      users: [],
      children: [],
      marketingPreferences: MarketingPreferences(
          id: 0,
          emailOptIn: true,
          smsOptIn: true,
          marketingOptIn: true,
          postalOptIn: false));
  bloc.add(CreateAccountRequested(account: account));
}

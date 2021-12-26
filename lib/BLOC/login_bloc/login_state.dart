part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class Authenticated extends Equatable {
  // const AuthenticationState._({
  //   this.status,
  //   // this.user = [User.empty],
  // });

  // const AuthenticationState.unknown() : this._();

  // const AuthenticationState.authenticated()
  //     : this._(status: AuthenticationStatus.authenticated);

  // const AuthenticationState.unauthenticated()
  //     : this._(status: AuthenticationStatus.unauthenticated);

  // final bool status;
  // final User user;

  @override
  List<Object> get props => [];
}

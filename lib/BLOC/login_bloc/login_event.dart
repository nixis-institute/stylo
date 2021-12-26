part of 'login_bloc.dart';

// import 'login_repository.dart';

@immutable
abstract class LoginEvent {}

class OnLogin extends LoginEvent {
  OnLogin(this.username, this.password);
  final String username;
  final String password;
  // @override
  List<Object> get props => [username, password];
}

class OnLogout extends LoginEvent {
  List<Object> get props => [];
}

class LoginLoading extends LoginEvent {
  List<Object> get props => [];
}

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class IsAuthenticated extends AuthenticationEvent {
  const IsAuthenticated(this.status);

  final bool status;

  @override
  List<Object> get props => [status];
}

// class AuthenticationLogoutRequested extends AuthenticationEvent {}

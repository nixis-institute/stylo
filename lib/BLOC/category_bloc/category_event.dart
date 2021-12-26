part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();
  @override
  List<Object> get props => [];
}

class AppStarted extends CategoryEvent {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class Fetch extends CategoryEvent {
  @override
  String toString() => "fetch";

  @override
  // TODO: implement props
  List<Object> get props => [];
}

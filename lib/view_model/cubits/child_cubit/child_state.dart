part of 'child_cubit.dart';

@immutable
abstract class ChildState {}

class ChildInitial extends ChildState {}

class ChildLoadingState extends ChildState {}

class ChildSuccessState extends ChildState {}

class ChildErrorState extends ChildState {}

class ChildVisiblePasswordState extends ChildState {}

class ChildVisibleConfirmPasswordState extends ChildState {}

class ChildChangeGenderState extends ChildState {}
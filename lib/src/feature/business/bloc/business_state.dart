part of 'business_bloc.dart';

@immutable
abstract class BusinessState {}

class BusinessInitial extends BusinessState {}

class BusinessFetchingLoadingState extends BusinessState {}

class BusinessFetchingSuccessfulState extends BusinessState {
  final List<Business> businesses;

  BusinessFetchingSuccessfulState({required this.businesses});
}

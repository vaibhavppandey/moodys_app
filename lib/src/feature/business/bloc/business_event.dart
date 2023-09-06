part of "business_bloc.dart";

@immutable
abstract class BusinessEvent {}

class BusinessesInitialFetchEvent extends BusinessEvent {}

class BusinessRefreshEvent extends BusinessEvent {
  final String term;
  BusinessRefreshEvent({required this.term});
}

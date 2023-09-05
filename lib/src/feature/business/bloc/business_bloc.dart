import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:thale_task_app/src/feature/business/model/business.dart';
import 'package:thale_task_app/src/feature/business/repository/businesses_repository.dart';

part 'business_event.dart';
part 'business_state.dart';

class BusinessesBloc extends Bloc<BusinessEvent, BusinessState> {
  BusinessesBloc() : super(BusinessInitial()) {
    on<BusinessesInitialFetchEvent>(searchedBusinessesFetch);
    on<BusinessRefreshEvent>(refreshBusinessQuery);
  }

  FutureOr<void> searchedBusinessesFetch(
      BusinessesInitialFetchEvent event, Emitter<BusinessState> emit) async {
    emit(BusinessFetchingLoadingState());
    List<Business> businesses =
        await BusinessesRepository.getSearchedBusinesses(term: "pizza");
    emit(BusinessFetchingSuccessfulState(businesses: businesses));
  }

  FutureOr<void> refreshBusinessQuery(event, emit) async {
    emit(BusinessFetchingLoadingState());
    List<Business> businesses =
        await BusinessesRepository.getSearchedBusinesses(term: "burger");
    emit(BusinessFetchingSuccessfulState(businesses: businesses));
  }
}
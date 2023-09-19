import 'package:bloc/bloc.dart';
import 'package:exam/services/authentication_service.dart';
import 'package:exam/services/data_service.dart';
import 'package:exam/states/cubit_state.dart';
import 'package:exam/states/initial_state.dart';

import '../../models/place_model.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.dataServices, required this.authService}): super(InitialState()) {
    getAllDestination();
  }
  final DataServices dataServices;
  final AuthenticationService authService;

  var destinations;
  late List<PlaceModel> places;
  late List<PlaceModel> favoritePlaces = [];
  var welcome;
  var userModel;

  // homepage
  void getAllDestination() async {
    try {
      emit(LoadingState());
      welcome = await dataServices.getInfoDestination();
      emit(HomeLoadedState(destinations: destinations));
    } catch (e) {
      print(e);
    }
  }
}
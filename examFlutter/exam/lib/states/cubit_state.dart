import 'package:equatable/equatable.dart';
import '../models/destination_model.dart';

abstract class CubitStates extends Equatable {}
class LoadingState extends CubitStates {
  @override
// TODO: implement props
  List<Object> get props => [];

}

class HomeLoadedState extends CubitStates {
  HomeLoadedState({required this.destinations, this.textSearch = ""});
  final List<DestinationModel> destinations;
  final String? textSearch;
  @override
  // TODO: implement props
  List<Object> get props => [destinations];
}
import 'package:equatable/equatable.dart';
import '../models/spacex.dart';

abstract class MissionState extends Equatable {
  const MissionState();
}

class MissionInitial extends MissionState {
  @override
  List<Object> get props => [];
}

class MissionLoading extends MissionState {
  @override
  List<Object> get props => [];
}

class MissionSuccess extends MissionState {
  final SpacexResponseModel spacexResponseModel;
  const MissionSuccess (this.spacexResponseModel);
  @override
  List<Object> get props => [spacexResponseModel];
}

class MissionError extends MissionState {
   
    const MissionError ();
  @override
  List<Object> get props => [];
}
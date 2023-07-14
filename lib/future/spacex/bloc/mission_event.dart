

import 'package:equatable/equatable.dart';

abstract class MissionEvent extends Equatable {
  const MissionEvent();
}

class GetMission extends MissionEvent{
  @override
  List<Object?> get props => throw UnimplementedError();



}
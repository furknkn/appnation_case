
import 'package:appnation_case/future/spacex/bloc/mission_event.dart';
import 'package:appnation_case/future/spacex/bloc/mission_state.dart';
import 'package:appnation_case/future/spacex/repository/mission_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/app_snackbar.dart';
class MissionBloc extends Bloc<MissionEvent, MissionState> {
   late final MissionRepository service;
  MissionBloc({required this.service}) : super(MissionInitial()) {
    on<GetMission>((event, emit) => _callprofileApi(event,emit));

  }

  _callprofileApi(GetMission event, Emitter<MissionState> emit) async{
    emit(MissionLoading());
    var responseData =await  service.getMission();
   
   if(responseData.isRight){
      emit (MissionSuccess(responseData.right));
   }else{
    emit (const MissionError());
       AppAlertDialog.showDialog(alertEnum: AlertEnum.danger, text: responseData.left);
   }
  }
}
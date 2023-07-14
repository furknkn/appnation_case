import 'package:appnation_case/core/constants/colors_palette.dart';
import 'package:appnation_case/future/spacex/bloc/mission_bloc.dart';
import 'package:appnation_case/future/spacex/bloc/mission_event.dart';
import 'package:appnation_case/future/spacex/bloc/mission_state.dart';
import 'package:appnation_case/future/spacex/repository/mission_repository.dart';
import 'package:flutter/material.dart';
import 'package:appnation_case/future/spacex/view/widgets/_widget_exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MissionBloc(service: MissionRepository()),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorsPalette.secondary,
          body:
              BlocBuilder<MissionBloc, MissionState>(builder: (context, state) {
            var bloc = context.read<MissionBloc>();

            if (state is MissionInitial) {
              bloc.add(GetMission());
              return const Center(child: CircularProgressIndicator());
            } else if (state is MissionLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is MissionError) {
              return const Center(
                child: Icon(Icons.error),
              );
            } else if (state is MissionSuccess) {
              return RefreshIndicator(
                onRefresh: () async {
                  bloc.add(GetMission());
                },
                child: NestedScrollView(
                  floatHeaderSlivers: true,
                  headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    CustomSliverAppBar(
                        patch: state.spacexResponseModel.links?.patch),
                  ],
                  body: HomePageBody(
                      spacexResponseModel: state.spacexResponseModel),
                ),
              );
            }
            return const Center(child: Text('something is wrong'));
          }),
        ),
      ),
    );
  }
}

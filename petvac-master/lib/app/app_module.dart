import 'package:petvac/app/modules/logon/logon_bloc.dart';
import 'package:petvac/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:petvac/app/app_widget.dart';
import 'package:petvac/app/modules/gametipos/gametipos_repository.dart';

import 'modules/games/games_repository.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => LogonBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => GametiposRepository()),
        Dependency((i) => GamesRepository()),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

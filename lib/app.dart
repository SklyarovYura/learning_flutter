import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter/navigation/navigation.block.dart';
import 'package:learning_flutter/screens/screen_a.dart';
import 'package:learning_flutter/screens/screen_b.dart';
import 'package:learning_flutter/screens/screen_not_found.dart';

import 'navigation/navigation.state.dart';

class AppWithBlocBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (_, state) {
          switch (state.screen) {
            case 'A':
              {
                return ScreenA();
              }
            case 'B':
              {
                return ScreenB();
              }
          }
          return Screen404();
        },
      ),
    );
  }
}

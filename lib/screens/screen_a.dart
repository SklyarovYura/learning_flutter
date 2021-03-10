import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:learning_flutter/navigation/navigation.block.dart';
import 'package:learning_flutter/navigation/navigation.event.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('go to screen B'),
          onPressed: () {
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvent("B"));
          },
        ),
      ),
    );
  }
}

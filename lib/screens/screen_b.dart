import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:learning_flutter/navigation/navigation.block.dart';
import 'package:learning_flutter/navigation/navigation.event.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('go to screen A'),
          onPressed: () {
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvent("A"));
          },
        ),
      ),
    );
  }
}

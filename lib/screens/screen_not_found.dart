import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:learning_flutter/navigation/navigation.block.dart';
import 'package:learning_flutter/navigation/navigation.event.dart';

class Screen404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOT FOUND SCREEN'),
      ),
      body: Center(
        child: Text('NOT FOUND SCREEN'),
      ),
    );
  }
}

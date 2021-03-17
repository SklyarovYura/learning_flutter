import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:learning_flutter/navigation/navigation.block.dart';
import 'package:learning_flutter/navigation/navigation.event.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
      ),
      body: Column(children: [
        SfDateRangePicker(
          view: DateRangePickerView.month,
          selectionMode: DateRangePickerSelectionMode.range,
        ),
        ElevatedButton(
          child: Text('go to screen A'),
          onPressed: () {
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvent("A"));
          },
        )
      ]),
    );
  }
}

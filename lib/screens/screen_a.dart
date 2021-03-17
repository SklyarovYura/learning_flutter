import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:learning_flutter/navigation/navigation.block.dart';
import 'package:learning_flutter/navigation/navigation.event.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Screen A')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DatePicker(DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.black,
                selectedTextColor: Colors.white, onDateChange: (date) {
              // New date selected
              //setState(() {
              // _selectedValue = date;
            }),
            ElevatedButton(
              child: Text('go to screen B'),
              onPressed: () {
                BlocProvider.of<NavigationBloc>(context)
                    .add(NavigationEvent("B"));
              },
            ),
            ElevatedButton(
              child: Text('go to screen B'),
              onPressed: () {
                BlocProvider.of<NavigationBloc>(context)
                    .add(NavigationEvent("D"));
              },
            )
          ],
        ));
  }
}

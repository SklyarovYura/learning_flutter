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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            child: Text('go to screen B'),
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent("B"));
            },
          ),
          ElevatedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    color: Colors.greenAccent,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                          ),
                          Slider(
                              // value: _currentSliderValue,
                              value: 19,
                              min: 0,
                              max: 100,
                              divisions: 5,
                              // label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                // setState(() {
                                //   _currentSliderValue = value;
                                // });
                              }),
                          Container(
                            height: 100,
                            child: ListView(
                              padding: const EdgeInsets.all(8),
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  color: Colors.blue,
                                  child: const Center(child: Text('Entry A')),
                                ),
                                Container(
                                  height: 50,
                                  color: Colors.amber[500],
                                  child: const Center(child: Text('Entry B')),
                                ),
                                Container(
                                  height: 50,
                                  color: Colors.amber[100],
                                  child: const Center(child: Text('Entry C')),
                                ),
                              ],
                            ),
                          )
                          // const Text('Modal BottomSheet'),
                          // ElevatedButton(
                          //   child: const Text('Close BottomSheet'),
                          //   onPressed: () => Navigator.pop(context),
                          // )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}

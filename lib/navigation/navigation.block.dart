import 'package:bloc/bloc.dart';

import 'navigation.event.dart';
import 'navigation.state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc(NavigationState initialState) : super(initialState);

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    switch (event.screen) {
      case "A":
        yield NavigationState("A");
        break;
      case "B":
        yield NavigationState("B");
        break;
    }
  }

  // MyBloc() : super(StateA());
  //
  // @override
  // Stream<MyState> mapEventToState(MyEvent event) async* {
  //   switch (event) {
  //     case MyEvent.eventA:
  //       yield StateA();
  //       break;
  //     case MyEvent.eventB:
  //       yield StateB();
  //       break;
  //   }
  // }
}

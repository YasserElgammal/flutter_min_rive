import 'package:flare_flutter/flare_controls.dart';
import 'package:flare_flutter/flare.dart';

class MinionCotrols extends FlareControls{
  @override
  void initialize(FlutterActorArtboard artboard) {
    super.initialize(artboard);
    play("Stand");
  }
  @override
  void onCompleted(String name) {
    super.onCompleted(name);
    play("Stand");
  }

  void somethingTodo(String todo){
    play(todo);
  }

}
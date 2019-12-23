import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_min_rive/helper.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MinionCotrols minions;
  @override
  void initState(){
    super.initState();
    minions = MinionCotrols();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 300.0,
              child: FlareActor(
                "assets/minion.flr",
                animation: "Stand",
                controller: minions,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                InkWell(
                  onTap: () {
                    minions.somethingTodo("Dance");
                  },
                  child: Text("Dance"),
                ),
                InkWell(
                  onTap: () {
                    minions.somethingTodo("Jump");
                  },
                  child: Text("Jump"),
                ),
                InkWell(
                  onTap: () {
                    minions.somethingTodo("Wave");
                  },
                  child: Text("Wave"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

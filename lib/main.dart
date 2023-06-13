import 'package:amazonclone/router.dart';
import 'package:amazonclone/view/auth/authScreen.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

import 'constant/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => generateRoute(settings),
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          colorScheme:
              ColorScheme.light(primary: GlobalVariables.primaryColor)),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Amazon"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello Amazon"),
              Builder(builder: (context) {
                return ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AuthScreen.routeName);
                    },
                    child: Text("Click Me"));
              }),
              Container(
                height: 200,
                width: 200,
                child: BabylonJSViewer(src: "assets/obj/dice.obj"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(Object(fileName: 'assets/obj/dice.obj'));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

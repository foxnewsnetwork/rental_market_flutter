import 'package:flutter/material.dart';
import './routes.dart';

class MyApp extends StatelessWidget {
  final AppRouter router;

  MyApp({
    Key key
  }): 
    router = new AppRouter(),
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Rental Market',
      initialRoute: '/',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Hot Reload App in IntelliJ). Notice that the counter
        // didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),

      onGenerateRoute: router.generator,
    );
  }
}

void main() {
  runApp(new MyApp());
}

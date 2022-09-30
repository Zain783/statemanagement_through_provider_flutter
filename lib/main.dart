import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut_2/provider/example_one_provider.dart';
import 'package:provider_tut_2/screens/example_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // final valueprovider = Provider.of<ExampleOneProvider>(context);

    return ChangeNotifierProvider(
      create: (_) => ExampleOneProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          canvasColor: Colors.black,
        ),
        home: ExampleOne(),
      ),
    );
  }
}

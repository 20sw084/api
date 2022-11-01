import 'package:api_app/model/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => dummyData(),
        ),
      ],
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

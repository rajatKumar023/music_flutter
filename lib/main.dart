import 'package:flutter/material.dart';
import 'package:music_flutter/presentations/home_page.dart';
import 'package:music_flutter/stores/tab_bar_store.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TabBarStore>.value(value: TabBarStore()),
      ],
      child: MaterialApp(
        title: 'Flutter Music',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

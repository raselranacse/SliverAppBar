import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 100,
                backgroundColor: Colors.blue,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("Country Name"),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
                AddDetails("Bangladesh", "Its very Beautiful Country "),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

Widget AddDetails(String name, String description) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:schaffen_intership/listliver.dart';
import 'package:schaffen_intership/searchsliver.dart';
import 'package:schaffen_intership/userfirstviewsliver.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          UserfirstSliverAppBar(),
          Sliverwekendcontaer(),
          Sliverlistdatasreach(),
          Sliversearchbar(),
          SliversearchList(),
        ],
      ),
    );
  }
}

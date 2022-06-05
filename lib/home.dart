import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_route/router.gr.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          context.router.push(const RandomPage());
        },
        child: const Text('Press me'),
      ),
    ),
  );
}
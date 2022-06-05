import 'package:bloc_route/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomPage extends StatefulWidget {
  const RandomPage({Key? key}) : super(key: key);

  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {



  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {}, 
        builder: (context, state) {
          if (state is HomeInitial) {
            return buildInitial();
          } else if (state is HomeLoading) {
            return const CircularProgressIndicator();
          }
          return buildInitial();
        }
      ),
    ),
  );

  Widget buildInitial() => ElevatedButton(
    onPressed: () {
      context.read<HomeCubit>().startLoading();
    },
    child: const Text('Start loading'),
  );

}
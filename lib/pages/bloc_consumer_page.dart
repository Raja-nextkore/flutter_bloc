import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/bloc/internet_bloc/internet_bloc.dart';
import 'package:flutter_bloc_tutorial/bloc/internet_bloc/internet_state.dart';

class BlocConsumerPage extends StatelessWidget {
  const BlocConsumerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InternetBloc, InternetState>(
      builder: (context, state) {
        if (state is InternetGainState) {
          return const Text('Connected!');
        } else if (state is InternetLostState) {
          return const Text('Not Connected!');
        } else {
          return const Text('Loading...');
        }
      },
      listener: (context, state) {
        if (state is InternetGainState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Connected!'),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Not Connected!'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
    );
  }
}

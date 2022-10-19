import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/flutter_bloc/bloc/bloc/sample_bloc.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SampleBloc, SampleInitialState>(
      builder: (context, state) {
        return ElevatedButton(
            onPressed: state.isOn ? () {} : null,
            child: const Text('Example Flutter Bloc'));
      },
    );
  }
}

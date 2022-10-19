import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/flutter_bloc/button.dart';

import 'bloc/bloc/sample_bloc.dart';

class FlutterBloc extends StatelessWidget {
  const FlutterBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bloc'),
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => SampleBloc(),
          child: BlocBuilder<SampleBloc, SampleInitialState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Enable or Disable Button',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: state.isOn,
                        onChanged: (value) {
                          context.read<SampleBloc>().add(ChangeBotonEvent());
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ),
                  ),
                  const Mybutton()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

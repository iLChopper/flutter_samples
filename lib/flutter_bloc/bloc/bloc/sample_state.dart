part of 'sample_bloc.dart';

class SampleInitialState extends Equatable {
  final bool isOn;

  const SampleInitialState({required this.isOn});

  SampleInitialState copyWith({bool? isOn}) => SampleInitialState(
        isOn: isOn ?? this.isOn,
      );

  @override
  List<Object> get props => [isOn];
}

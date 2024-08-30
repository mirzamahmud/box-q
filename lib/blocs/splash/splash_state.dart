import 'package:equatable/equatable.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

// initial state
class SplashInitialState extends SplashState{}

// loading state
class SplashLoadingState extends SplashState{}

// success state
class SplashSuccessState extends SplashState{}

// error state
class SplashErrorState extends SplashState{}

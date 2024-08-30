import 'package:box_q/blocs/splash/splash_event.dart';
import 'package:box_q/blocs/splash/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {

  SplashBloc() : super(SplashInitialState()){
    on<StartSplashAnimationEvent>((StartSplashAnimationEvent event, Emitter<SplashState> emit){
      onStartAnimation(event, emit);
    });
  }

  void onStartAnimation(StartSplashAnimationEvent event, Emitter<SplashState> emit) async {
    emit(SplashLoadingState());

    try{
      emit(SplashSuccessState());
    }catch(e){
      emit(SplashErrorState());
    }
  }
}
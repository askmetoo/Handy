import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part './on_boarding_event.dart';
part './on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(LoadNextOnBoardingState(index: 0));

  int _currentIndex = 0;
  bool _isNextAvailable;
  bool _isPrevAvailable;
  bool _isSkipAvailable;
  bool _isStartAvailable;

  // TODO: implement register details process
  @override
  Stream<OnBoardingState> mapEventToState(OnBoardingEvent event) async* {
    if (event is NextClickedEvent) {
      _currentIndex++;
      _availableVerification();
      yield LoadNextOnBoardingState(
        index: _currentIndex,
        isNextAvailable: _isNextAvailable,
        isPrevAvailable: _isPrevAvailable,
        isSkipAvailable: _isSkipAvailable,
        isStartAvailable: _isStartAvailable,
      );
    } else if (event is PrevClickedEvent) {
      _currentIndex--;
      _availableVerification();
      yield LoadNextOnBoardingState(
        index: _currentIndex,
        isNextAvailable: _isNextAvailable,
        isPrevAvailable: _isPrevAvailable,
        isSkipAvailable: _isSkipAvailable,
        isStartAvailable: _isStartAvailable,
      );
    } else if (event is SkipClickedEvent) {
      yield LoadHomePageState();
    } else if (event is StartClickedEvent) {
      yield LoadHomePageState();
    }
  }

  _availableVerification() {
    switch (_currentIndex) {
      case 0:
        _isNextAvailable = true;
        _isSkipAvailable = _isPrevAvailable = _isStartAvailable = false;
        break;
      case 1:
        _isNextAvailable = _isPrevAvailable = true;
        _isSkipAvailable = _isStartAvailable = false;
        break;
      case 2:
        _isSkipAvailable = _isNextAvailable = true;
        _isStartAvailable = _isPrevAvailable = false;
        break;
      case 3:
        _isPrevAvailable = _isStartAvailable = true;
        _isNextAvailable = _isSkipAvailable = false;
        break;
    }
  }
}

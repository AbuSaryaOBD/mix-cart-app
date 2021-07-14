import 'package:bloc/bloc.dart';

class SplashCubit extends Cubit<int> {
  SplashCubit(this.length) : super(0);
  final int length;

  void next() {
    if (state < this.length - 1) this.emit(state + 1);
  }

  void setIndex(int index) {
    this.emit(index);
  }
}

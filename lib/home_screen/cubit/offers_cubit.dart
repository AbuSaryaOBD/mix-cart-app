import 'package:bloc/bloc.dart';

class OffersCubit extends Cubit<int> {
  OffersCubit() : super(0);

  void setIndex(int index) {
    this.emit(index);
  }
}

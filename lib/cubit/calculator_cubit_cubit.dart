import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'calculator_cubit_state.dart';

class CalculatorCubitCubit extends Cubit<CalculatorCubitState> {
  CalculatorCubitCubit()
      : super(
          const CalculatorCubitState(
            etype: Etype.pool,
            fneed: false,
            ftype: Ftype.pavers,
            height: 10,
            width: 01,
            color: '',
            screentype: Stype.tuff,
            dnum: 0,
            doggiedoor: false,
            unit: 1,
          ),
        );

  void updateState(String type, Object update) {
    switch (type) {
      case 'etype':
        final output = update as Etype;

        switch (output) {
          case Etype.pool:
            emit(state.copyWith(etype: Etype.pool, unit: 11));
          case Etype.patio_insulated:
            emit(state.copyWith(etype: Etype.patio_insulated, unit: 45));
          case Etype.patio_screened:
            emit(state.copyWith(etype: Etype.patio_screened, unit: 11));
          case Etype.carport:
            emit(state.copyWith(etype: Etype.carport, unit: 11));
          case Etype.gazebo:
            emit(state.copyWith(etype: Etype.gazebo, unit: 11));
          case Etype.balcony:
            emit(state.copyWith(etype: Etype.balcony, unit: 11));
          case Etype.front:
            emit(state.copyWith(etype: Etype.front, unit: 11));
        }
        emit(state.copyWith(etype: update as Etype));
      case 'fneed':
        print('fneed');
        emit(state.copyWith(fneed: update as bool));
      case 'ftype':
        emit(state.copyWith(ftype: update as Ftype));
      case 'height':
        emit(state.copyWith(height: update as double));
      case 'width':
        emit(state.copyWith(width: update as double));
      case 'color':
        emit(state.copyWith(color: update as String));
      case 'stype':
        emit(state.copyWith(screentype: update as Stype));
      case 'dnum':
        emit(state.copyWith(dnum: update as double));
      case 'doggietype':
        emit(state.copyWith(doggiedoor: update as bool));
    }
  }
}

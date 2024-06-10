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
            height: 0,
            width: 0,
            color: '',
            screentype: Stype.tuff,
            dnum: 0,
            doggiedoor: false,
            eunit: 25,
            funit: 2,
            sunit: 10,
          ),
        );

  void updateState(String type, Object update) {
    switch (type) {
      case 'etype':
        final output = update as Etype;
        switch (output) {
          case Etype.pool:
            emit(state.copyWith(etype: Etype.pool, eunit: 23));
          case Etype.patio_insulated:
            emit(state.copyWith(etype: Etype.patio_insulated, eunit: 45));
          case Etype.patio_screened:
            emit(state.copyWith(etype: Etype.patio_screened, eunit: 30));
          case Etype.carport:
            emit(state.copyWith(etype: Etype.carport, eunit: 35));
          case Etype.gazebo:
            emit(state.copyWith(etype: Etype.gazebo, eunit: 35));
          case Etype.balcony:
            emit(state.copyWith(etype: Etype.balcony, eunit: 50));
          case Etype.front:
            emit(state.copyWith(etype: Etype.front, eunit: 100));
        }

      case 'fneed':
        final output = update as bool;
        if (output) {
          emit(state.copyWith(fneed: update));
        } else {
          emit(state.copyWith(fneed: update, funit: 0));
        }

      case 'ftype':
        final output = update as Ftype;
        switch (output) {
          case Ftype.pavers:
            emit(state.copyWith(ftype: Ftype.pavers, funit: 2));
          case Ftype.slab:
            emit(state.copyWith(ftype: Ftype.pavers, funit: 2));
        }
      case 'height':
        emit(state.copyWith(height: update as double));
      case 'width':
        emit(state.copyWith(width: update as double));
      case 'color':
        emit(state.copyWith(color: update as String));
      case 'stype':
        final output = update as Stype;
        switch (output) {
          case Stype.deff:
            emit(state.copyWith(screentype: Stype.deff, sunit: 10));
          case Stype.nosee:
            emit(state.copyWith(screentype: Stype.nosee, sunit: 12));
          case Stype.tuff:
            emit(state.copyWith(screentype: Stype.tuff, sunit: 20));
          case Stype.glas:
            emit(state.copyWith(screentype: Stype.glas, sunit: 25));
          case Stype.animal:
            emit(state.copyWith(screentype: Stype.animal, sunit: 30));
        }
      case 'dnum':
        emit(state.copyWith(dnum: update as double));
      case 'doggietype':
        emit(state.copyWith(doggiedoor: update as bool));
    }
  }
}

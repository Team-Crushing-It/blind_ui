import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_cubit_state.dart';

class CalculatorCubitCubit extends Cubit<CalculatorCubitState> {
  CalculatorCubitCubit()
      : super(
          CalculatorCubitState(
            etype: Etype.pool,
            fneed: false,
            ftype: Ftype.pavers,
            height: 0,
            width: 0,
            color: '',
            screentype: Stype.tuff,
            dnum: 0,
            doggiedoor: false,
            price: 0,
          ),
        );

  void updateState(CalculatorCubitState state) => emit(
        CalculatorCubitState(
          etype: state.etype,
          fneed: state.fneed,
          ftype: state.ftype,
          width: state.width,
          height: state.height,
          color: state.color,
          screentype: state.screentype,
          dnum: state.dnum,
          doggiedoor: state.doggiedoor,
          price: state.price,
        ),
      );
}

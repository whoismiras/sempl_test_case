import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'launch_page_state.dart';

class LaunchPageCubit extends Cubit<LaunchPageCommonState> {
  LaunchPageCubit() : super(LaunchPageCommonState());

  /// method to change value of checkBox
  void checkBox(bool value) {
    emit(
      LaunchPageCommonState().copyWith(
        isButtonActive: value,
      ),
    );
  }
}

part of 'launch_page_cubit.dart';

class LaunchPageCommonState extends Equatable {
  LaunchPageCommonState({
    this.isButtonActive = false,
  });
  final bool isButtonActive;

  LaunchPageCommonState copyWith({
    bool? isButtonActive,
  }) {
    return LaunchPageCommonState(
      isButtonActive: isButtonActive ?? this.isButtonActive,
    );
  }

  @override
  List<Object?> get props => [isButtonActive];
}

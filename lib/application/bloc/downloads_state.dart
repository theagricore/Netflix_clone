part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isIoading,
    List<Download>? downlods,
    required Option<Either<MainFailures, List<Download>>>
        downlodsFailureOrSuccessOption,
  }) = _DownloadsState;

  factory DownloadsState.inital() {
    return const DownloadsState(
      isIoading: false,
      downlodsFailureOrSuccessOption: None()
    );
  }
}

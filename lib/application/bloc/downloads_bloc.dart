import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failures.dart';
import 'package:netflix/domain/downlod/i_downloads_repo.dart';
import 'package:netflix/domain/downlod/models/downlod.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {

  final IDownloadsRepo _downloadsRepo;

  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.inital()) {

    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(
          isIoading: true,
          downlodsFailureOrSuccessOption: None(),
        ),
      );
      final Either<MainFailures, List<Download>> downloadsOption =
          await _downloadsRepo.getDownlodsImages();
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
                isIoading: false,
                downlodsFailureOrSuccessOption: Some(Left(failure))
              ),
          (success) => state.copyWith(
                isIoading: false,
                downlods: success,
                downlodsFailureOrSuccessOption: some(Right(success))
              )));
    });
  }
}

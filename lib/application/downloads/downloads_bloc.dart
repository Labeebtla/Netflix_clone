import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/failure/main_failure.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.inital()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(isLoading: true, downloadfailureOrsucessoption: none()),
      );
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await downloadsRepo.getDownloadsImage();
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadfailureOrsucessoption: some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloadfailureOrsucessoption: some(Right(success)))));
    });
  }
}

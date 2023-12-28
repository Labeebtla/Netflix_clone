import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'download_bloc_event.dart';
part 'download_bloc_state.dart';
part 'download_bloc_bloc.freezed.dart';

class DownloadBlocBloc extends Bloc<DownloadBlocEvent, DownloadBlocState> {
  DownloadBlocBloc() : super(DownloadState.inital()) {
    on<_GetDownloadsImage>((event, emit) {
      // TODO: implement event handler
    });
  }
}

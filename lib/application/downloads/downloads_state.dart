part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState(
      {required bool isLoading,
      List<Downloads>? downloads,
      required Option<Either<MainFailure, List<Downloads>>>
          downloadfailureOrsucessoption}) = _DownloadsState;
  factory DownloadsState.inital() {
    return DownloadsState(
        isLoading: false, downloadfailureOrsucessoption: none());
  }
}

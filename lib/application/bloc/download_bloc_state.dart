part of 'download_bloc_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
    required List<Downloads>? downloads,
  }) = _DownloadState;
  factory DownloadState.inital() {
    return const DownloadState(
      isLoading: false,
      downloads: [],
    );
  }
}

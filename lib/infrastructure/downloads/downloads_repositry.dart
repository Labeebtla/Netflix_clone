import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failure/main_failure.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

class DownloadsReopistory implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiendPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadsList = [];
      } else {
        return Left(MainFailure.serverfailure());
      }
    } catch (_) {
      return Left(MainFailure.clientFailure());
    }
  }
}

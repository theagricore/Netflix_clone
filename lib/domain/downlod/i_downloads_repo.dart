import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failures.dart';
import 'package:netflix/domain/downlod/models/downlod.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailures,List<Download>>>getDownlodsImages();
}
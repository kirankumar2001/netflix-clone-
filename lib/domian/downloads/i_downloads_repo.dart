import 'package:dartz/dartz.dart';
import 'package:netflix/domian/core/failures/main_failure.dart';
import 'package:netflix/domian/downloads/models/downloads.dart';

abstract class IDowloadRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}

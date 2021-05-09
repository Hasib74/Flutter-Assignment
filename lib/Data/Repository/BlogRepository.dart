import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/Core/Error/failures.dart';
import 'package:flutter_blog_app/Data/Local/Repository/BlogLocalRepository.dart';
import 'package:flutter_blog_app/Data/Remote/Repository/BlogRemoteRepository.dart';
import 'package:get/get.dart';

class BlogRepository {
  BlogRemoteRepository _blogRemoteRepository = new BlogRemoteRepository();

  BlogLocalRepository _blogLocalRepository = new BlogLocalRepository();

  Future<Either<Failure, dynamic>> getBlog() async {
    var localBlog = await _blogLocalRepository.getBlog();

    if (localBlog != null) {
      return Right(localBlog);
    } else {
      Either<Failure, dynamic> _remoteResponse =
          await _blogRemoteRepository.getAllBlog();

      //  return _remoteResponse;

      return _remoteResponse.fold((l) {
        return Left(l);
      }, (r) {
        _blogLocalRepository.storeBlog(r);
        return Right(r);
      });
    }
  }
}

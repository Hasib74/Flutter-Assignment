import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/Core/Error/failures.dart';
import 'package:flutter_blog_app/Core/Network/network_info.dart';
import 'package:flutter_blog_app/Data/Remote/DataSource/ApiUrl.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BlogRemoteRepository {
  Future<Either<Failure, dynamic>> getAllBlog() async {
    if (await NetworkInfoController.to.isConnected) {
      try {
        http.Response response = await http.get(Uri.parse(ApiUrl.blogPost));

        printInfo(info: "Response : ${response.body}");
        return Right(response.body);
      } catch (err) {
        printInfo(info: "Error : ${err}");

        return Left(ServerFailure());
      }
    } else {
      return Left(NoConnectionFailure());
    }
  }
}

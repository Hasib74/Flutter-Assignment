import 'dart:convert';

import 'package:flutter_blog_app/Data/Local/DataSource/SpHelper.dart';

class BlogLocalRepository {
  SpHelper _spHelper = new SpHelper();

  storeBlog(var body) async {
    var value =
        await _spHelper.sharedPreferences.setString(_spHelper.spKey.BLOG, body);
    print("storeBlog ${value}");
  }

  getBlog() {
    try {
      var value = _spHelper.sharedPreferences.getString(_spHelper.spKey.BLOG);
      print("getBlog ${value}");
      return value;
    } catch (err) {
      print("getBlog  err ${err.toString()}");
      return null;
    }
  }
}

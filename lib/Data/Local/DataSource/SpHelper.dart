import 'package:flutter_blog_app/Data/Local/DataSource/SpKey.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpHelper {
  SharedPreferences sharedPreferences;
  SpKey spKey = new SpKey();

  static final SpHelper _singleton = SpHelper._internal();

  factory SpHelper() {
    _singleton.spInitialize();
    return _singleton;
  }

  SpHelper._internal();

  spInitialize() async {
    sharedPreferences = await SharedPreferences.getInstance();
    print("spInitialize ${sharedPreferences}");
  }


}

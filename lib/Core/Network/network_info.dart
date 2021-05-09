import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoController extends GetxController implements NetworkInfo {
  static NetworkInfoController to = Get.find();
  DataConnectionChecker dataConnectionChecker = new DataConnectionChecker();

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}

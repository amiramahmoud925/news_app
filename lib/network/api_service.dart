import 'package:dio/dio.dart';



class ApiService{
  final _baseUrl = "https://newsapi.org/";
  Dio x = Dio();

  Future<Map<String, dynamic>> get({required String endPoints})async{
    var respone = await x.get("$_baseUrl$endPoints");
    return respone.data;
  }

  Future<Map<String, dynamic>> post({required String endPoints})async{
    var respone = await x.post("$_baseUrl$endPoints");
    return respone.data;
  }

}

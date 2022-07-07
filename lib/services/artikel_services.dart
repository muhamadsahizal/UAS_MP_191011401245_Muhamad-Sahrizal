import 'package:dio/dio.dart';
import 'package:uas_artikel/models/artikel_models.dart';
import 'package:uas_artikel/models/detail_artikel_model.dart';

class ArtikelService {
  //get list resep

  Future<ArtikelModel> getArtikel() async {
    var response = await Dio().get('https://api.indosiana.com/api/articles');
    print(response);
    return ArtikelModel.fromJson(response.data);
  }

  //get detail resep
  Future<DetailArtikelModel> getDetailArtikel({String? key}) async {
    var response =
        await Dio().get('https://api.indosiana.com/api/articles/$key');
    print(key);
    print("response : $response");
    return DetailArtikelModel.fromJson(response.data);
  }
}

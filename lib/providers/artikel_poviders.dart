import 'package:flutter/cupertino.dart';
import 'package:uas_artikel/models/artikel_models.dart';
import 'package:uas_artikel/models/detail_artikel_model.dart';
import 'package:uas_artikel/services/artikel_services.dart';

class ArtikelProvider extends ChangeNotifier {
  ArtikelProvider() {
    showListArtikel();
  }

  final ArtikelService _ArtikelService = ArtikelService();
  ArtikelModel artikelModel = ArtikelModel();
  DetailArtikelModel detailArtikelModel = DetailArtikelModel();

  // Show List Resep Data
  showListArtikel() async {
    artikelModel = await _ArtikelService.getArtikel();
    notifyListeners();
  }

  // Show Detail artikel Data
  showDetailArtikel(String? id) async {
    detailArtikelModel = await _ArtikelService.getDetailArtikel(key: id);
    notifyListeners();
  }
}

class ArtikelDetailProvider with ChangeNotifier {
  final ArtikelService _ArtikelService = ArtikelService();
  DetailArtikelModel detailArtikelModel = DetailArtikelModel();

  showDetailArtikel(String? id) async {
    // detailartikelmodel = await _ResepService.getDetailResep(key: id);
    print('id $id');
    notifyListeners();
  }
}

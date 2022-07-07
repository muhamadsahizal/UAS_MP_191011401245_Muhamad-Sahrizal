import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_artikel/providers/artikel_poviders.dart';

class DetailArtikelScreen extends StatefulWidget {
  final String? title;
  const DetailArtikelScreen({this.title, Key? key}) : super(key: key);

  @override
  State<DetailArtikelScreen> createState() => _DetailArtikelScreenState();
}

class _DetailArtikelScreenState extends State<DetailArtikelScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Consumer<ArtikelProvider>(
        builder: (context, artikelProvider, child) {
          return SingleChildScrollView(
            child: Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        artikelProvider.detailArtikelModel.data![0].image!),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${artikelProvider.detailArtikelModel.data![0].title}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${artikelProvider.detailArtikelModel.data![0].createdAt}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(artikelProvider
                        .detailArtikelModel.data![0].description!
                        .replaceAll("<br />", " ")),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

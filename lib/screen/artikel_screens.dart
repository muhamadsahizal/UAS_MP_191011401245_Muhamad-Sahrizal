import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_artikel/providers/artikel_poviders.dart';
import 'package:uas_artikel/screen/detail_artikel_screen.dart';

class ArtikelScreen extends StatefulWidget {
  const ArtikelScreen({Key? key}) : super(key: key);

  @override
  State<ArtikelScreen> createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('191011401245_Muhamad Sahrizal'),
      ),
      body: Consumer<ArtikelProvider>(
        builder: (context, artikelProvider, child) {
          return ListView.builder(
            itemCount: artikelProvider.artikelModel.data!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtikelScreen(
                        title: artikelProvider.artikelModel.data![index].title,
                      ),
                    ),
                  );
                  artikelProvider.showDetailArtikel(
                      artikelProvider.artikelModel.data![index].id.toString());
                },
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            "${artikelProvider.artikelModel.data![index].image}"),
                        Text(
                          "${artikelProvider.artikelModel.data![index].title}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            padding: const EdgeInsets.all(18),
          );
        },
      ),
    );
  }
}

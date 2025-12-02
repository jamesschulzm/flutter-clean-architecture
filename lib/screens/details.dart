import 'package:flutter/material.dart';
import 'package:hyrule/controllers/dao_controller.dart';
import 'package:hyrule/domain/models/entry.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key, required this.entry}) : super(key: key);

  final Entry entry;

  final DaoController daoController = DaoController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Detalhes"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            daoController.saveEntry(entry: entry);
          },
        ),
      ),
    );
  }
}

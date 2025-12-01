import 'package:flutter/material.dart';
import 'package:hyrule/domain/models/entry.dart';

class EntryCard extends StatelessWidget {
  final Entry entry;

  const EntryCard({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Ink(
              child: Row(
                children: <Widget>[
                  Image.network(entry.image),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(entry.name),
                      Text(entry.description),
                    ],
                  )
                ],
              ),
            ),
          ),
          Wrap(
            children: entry
                .commonLocationsConverter()
                .map((e) => Chip(
                      label: Text(e),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

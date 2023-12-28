import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constant.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';
import 'package:netflix/presentation/search/widget/search_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'search',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  suffixIcon: Icon(Icons.close),
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
            fhieght,
            // Expanded(child: SearchWidget()),
            Expanded(child: SearchResult()),
          ],
        ),
      ),
    );
  }
}

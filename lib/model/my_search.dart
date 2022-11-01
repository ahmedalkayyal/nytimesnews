import 'package:flutter/material.dart';
import 'package:nytimesnews/model/test_article/test_article.dart';

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: const Icon(Icons.clear))
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(query),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = TestArticle().section;


    return ListView.builder(
      itemCount: suggestions?.length,
      itemBuilder: (context,index) {
        final suggestion = suggestions;
        return ListTile(
          title: Text("$suggestion"),
          onTap: () {
            query = suggestion!;
            showResults(context);
          },
        );
      },
    );
  }
}

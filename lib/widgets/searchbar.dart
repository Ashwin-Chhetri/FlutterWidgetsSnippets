import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  final List<String> fruits = const ['apple', 'oranges', 'melon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SeachBar Widget'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                  context: context,
                  delegate: CustomSearchDelegateString(fruits));
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class CustomSearchDelegateString extends SearchDelegate {
  CustomSearchDelegateString(this.fruits);
  List<String> fruits;
  // clear the search tex
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in fruits) {
      if (fruit.contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      padding: const EdgeInsets.only(left: 10),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        String fruit = matchQuery[index];
        return ListTile(
            dense: true,
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              fruit,
              style: const TextStyle(fontSize: 15),
            ));
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in fruits) {
      if (fruit.contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      padding: const EdgeInsets.only(left: 10),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        String fruit = matchQuery[index];
        return ListTile(
            dense: true,
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              fruit,
              style: const TextStyle(fontSize: 15),
            ));
      },
    );
  }
}

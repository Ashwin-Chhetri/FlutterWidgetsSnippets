import 'package:flutter/material.dart';
import 'package:widgetssamples/utils/navigate.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate(this.widgetList);
  List<Widget> widgetList;

  // clear the search text
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
    List<Widget> matchQuery = [];
    for (var widget in widgetList) {
      if (widget.toString().toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(widget);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      padding: const EdgeInsets.only(left: 10),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        Widget widget = matchQuery[index];

        return ListTile(
          dense: true,
          contentPadding: const EdgeInsets.all(0),
          leading: Text(
            (index + 1).toString(),
            style: const TextStyle(color: Colors.grey),
          ),
          title: Text(
            widget.toString(),
            style: const TextStyle(fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {
                Navigate.pushPage(context, widget);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.grey,
              )),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<Widget> matchQuery = [];
    for (var widget in widgetList) {
      if (widget.toString().toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(widget);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      padding: const EdgeInsets.only(left: 10),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        Widget widget = matchQuery[index];

        return ListTile(
          dense: true,
          contentPadding: const EdgeInsets.all(0),
          leading: Text(
            (index + 1).toString(),
            style: const TextStyle(color: Colors.grey),
          ),
          title: Text(
            widget.toString(),
            style: const TextStyle(fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {
                Navigate.pushPage(context, widget);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.grey,
              )),
        );
      },
    );
  }
}

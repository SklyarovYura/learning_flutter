import 'package:flutter/material.dart';

import 'main.dart';

class AppRoutePath {
  final int id;

  AppRoutePath.home() : id = null;

  AppRoutePath.details(this.id);

  bool get isHomePage => id == null;

  bool get isDetailsPage => id != null;

  Page page() {
    if (id != null) {
      return BookDetailsPage();
    }

    return MaterialPage(
      key: ValueKey('BooksListPage'),
      child: BooksListScreen(
        books: [],
        onTapped: (Book book) {},
      ),
    );
  }

  String get location {
    if (id != null) {
      return "books/$id";
    }
    return "/";
  }
}

class BookDetailsPage extends Page {
  final Book book;

  BookDetailsPage({
    this.book,
  }) : super(key: ValueKey(book));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return BookDetailsScreen(book: book);
      },
    );
  }
}

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  @override
  Future<AppRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location);

    if (uri.pathSegments.length >= 2) {
      var remaining = uri.pathSegments[1];
      return AppRoutePath.details(int.tryParse(remaining));
    } else {
      return AppRoutePath.home();
    }
  }

  @override
  RouteInformation restoreRouteInformation(AppRoutePath path) {
    return RouteInformation(location: path.location);
  }
}

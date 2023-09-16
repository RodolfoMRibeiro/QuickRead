import 'package:flutter/material.dart';
import 'package:iread/features/reading/view/widget/book.dart';
import 'package:iread/features/reading/view/widget/book_list_view.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: BookListView(books: <Book>[
      Book(
        title: "O nome do vento",
        imageUrl:
            "https://m.media-amazon.com/images/I/51XB3PsNieL._AC_UF1000,1000_QL80_.jpg",
      ),
      Book(
        title: "O nome do vento",
        imageUrl:
            "https://m.media-amazon.com/images/I/51XB3PsNieL._AC_UF1000,1000_QL80_.jpg",
      ),
      Book(
        title: "O nome do vento",
        imageUrl:
            "https://m.media-amazon.com/images/I/51XB3PsNieL._AC_UF1000,1000_QL80_.jpg",
      ),
      Book(
        title: "O nome do vento",
        imageUrl:
            "https://m.media-amazon.com/images/I/51XB3PsNieL._AC_UF1000,1000_QL80_.jpg",
      ),
    ]));
  }
}

import 'package:flutter/material.dart';
import 'package:iread/features/reading/view/widget/book.dart';

class BookListView extends StatelessWidget {
  final List<Book> books;

  const BookListView({required this.books, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: BookWidget(book: books[index]),
        );
      },
    );
  }
}

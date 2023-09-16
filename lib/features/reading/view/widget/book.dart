import 'package:flutter/material.dart';

class Book {
  final String title;
  final String imageUrl;

  const Book({required this.title, required this.imageUrl});
}

class BookWidget extends StatelessWidget {
  final Book book;

  const BookWidget({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Largura do livro
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Bordas arredondadas
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              book.imageUrl,
              width: 120, // Largura da imagem
              height: 180, // Altura da imagem
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            book.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

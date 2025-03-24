// Library Management System
// Create a system to manage books in a library.
// Implement a Book class with properties like title, author, isbn, and isAvailable.
// Implement a Library class with methods:
// - addBook(Book book): Adds a book to the library.
// - borrowBook(String isbn): Marks a book as borrowed if available.
// - returnBook(String isbn): Marks a book as available again.
// - searchByTitle(String title): Returns books matching the title.
// Ensure that the system correctly updates the book's availability.

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    required this.isbn,
    this.isAvailable = true,
  });

  @override
  String toString() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Available: $isAvailable';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  String borrowBook(String isbn) {
    for (Book book in books) {
      if (book.isbn == isbn) {
        if (book.isAvailable) {
          book.isAvailable = false;
          return "Book with ISBN $isbn borrowed successfully.";
        } else {
          return "Book with ISBN $isbn is not available.";
        }
      }
    }
    return "Book with ISBN $isbn not found.";
  }

  String returnBook(String isbn) {
    for (Book book in books) {
      if (book.isbn == isbn) {
        book.isAvailable = true;
        return "Book with ISBN $isbn returned successfully.";
      }
    }
    return "Book with ISBN $isbn not found.";
  }

  List<Book> searchByTitle(String title) {
    List<Book> results = [];
    for (Book book in books) {
      if (book.title.toLowerCase().contains(title.toLowerCase())) {
        results.add(book);
      }
    }
    return results;
  }
}

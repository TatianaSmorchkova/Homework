//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

print("Hello, World!")

//Библиотеку книг и видео библиотеку фильмов
//Возможность добавлять новые книги и фильмы и после добавления должна происходить автоматическая сортировка по алфавиту
//Сделать так что б когда я вызову метод(создайте сами его) - "Sort by mood" то фильмы должны отсортировать по настроению:)
class Movie {
    var nameOfMovie: String
    var duration: String
    var genreOfMovie: String
    init(nameOfMovie: String, duration: String, genreOfMovie: String) {
        self.nameOfMovie = nameOfMovie
        self.duration = duration
        self.genreOfMovie = genreOfMovie
    }
}

class LibraryTwo {
    var libraryWithMovie = [Movie]()
    func addMovie(movie: Movie) {
        libraryWithMovie.append(movie)
        let sortedNameOfMovie = libraryWithMovie.sorted { $0.nameOfMovie < $1.nameOfMovie }
        libraryWithMovie = sortedNameOfMovie
        print(libraryWithMovie)
        
    }
    
    func sortedGenreOfMovie(genreMovie: String) {
        let sortedOfGenre = libraryWithMovie.filter {$0.genreOfMovie == genreMovie}
        for movie in sortedOfGenre {
            print(movie.nameOfMovie)
        }
    }
}

var libraryTwo = LibraryTwo()
libraryTwo.addMovie(movie: Movie(nameOfMovie: "Титаник", duration: "Джеймс Кэмерон", genreOfMovie: "Роман"))
libraryTwo.addMovie(movie: Movie(nameOfMovie: "Девчата", duration: "Юрий Чулюкин", genreOfMovie: "Комедия"))
libraryTwo.addMovie(movie: Movie(nameOfMovie: "Дневник памяти", duration: "Ник Кассаветис", genreOfMovie: "Роман"))
libraryTwo.addMovie(movie: Movie(nameOfMovie: "Джанго освобожденный", duration: "Квентин Тарантино", genreOfMovie: "Триллер"))

libraryTwo.sortedGenreOfMovie(genreMovie: "Роман")


//И такой же медод придумать для книг 🙂

class Book {
    var name: String
    var author: String
    var genre: String
    init(name: String, author: String, genre: String) {
        self.name = name
        self.author = author
        self.genre = genre
    }
}
class LibraryOne {
    var libraryWithBook = [Book]()
    func addBook(book: Book) {
        libraryWithBook.append(book)
        let sortedNameOfBook = libraryWithBook.sorted { $0.name < $1.name}
        libraryWithBook = sortedNameOfBook
        print(libraryWithBook)
    }
    
    
    func sortedMoodOfBook(genreOfBook: String) {
        let sortedMood = libraryWithBook.filter { $0.genre == genreOfBook}
        for book in sortedMood {
            print(book.name)
        }
    }
}
var libraryOne = LibraryOne()
libraryOne.addBook(book: Book(name: "Война и мир", author: "Толстой", genre: "Роман"))
libraryOne.addBook(book: Book(name: "Собака Баскервилей", author: "Конан Дойл", genre: "Детектив"))
libraryOne.addBook(book: Book(name: "Вишневый сад", author: "Чехов", genre: "Драма"))
libraryOne.addBook(book: Book(name: "Анна Каренина", author: "Толстой", genre: "Роман"))

libraryOne.sortedMoodOfBook(genreOfBook: "Роман")

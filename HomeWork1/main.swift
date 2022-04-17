//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Домашняя работа №3

//Посоздавайте свои строки

var myFavoriteWriter = "Erich Maria Remarque"

var myFavotiteColor: String = "Brown"

var name = "Tanya"

var surname = "Smorchkova"

print(name + " " + surname)

var date = "First January"

print("New year is celebrated \(date)")

name.append(contentsOf: surname)

//Создайте различные выражения с приведением типа

let plantLengthOnDayFive: Double = 1.5

var resultOne = String(plantLengthOnDayFive)

resultOne = "\(plantLengthOnDayFive) centimeters"

let plantLengthDayTen: Int = 3

let resultOfTwoDays: String = String(plantLengthOnDayFive + Double(plantLengthDayTen))

//Так же поработайте с циклом for in как в уроке

for c in "Hello" {
    print(c)

}
//Напишите с помощью строк своё резюме: имя, фамилия, возраст, где живете, хобби и т.п.

let myName = "Татьяна"

let myPatronymic = "Михайловна"

let mySurname = "Сморчкова"

var myAge = 25

var myLocation = "Москве"

var myProfession = "Контент-менеджером"

var myHobby = "плаванием"

//Соберите из этих строк 1 большую (вспоминаем интерполяцию) и выведите в консоль.

var summary: String = "Привет! Меня зовут \(myName + " " + myPatronymic + " " + mySurname). Мне \(myAge) лет. На данный момент проживаю в \(myLocation). Работаю в ЦУМе \(myProfession). В свободное время увлекаюсь \(myHobby)."


//Напишите 10 строк, соберите их с помощью интерполяции и поставьте в нужных местах переносы на новую строку и пробелы (см. \n и \t).

var shop = "ЦУМ"

var decoding = "Центральный универсальный магазин"

var address = "Петровка 2"

var metro = "Охотный ряд"

var yearOfFoundation = "1908"

var brandOne = "Il Gufo"

var brandTwo = "Chloe"

var brandFour = "Brioni"

var brandOfFive = "le Labo"

var numberOfFoors = "5"

var text: String = "В центре Москвы находится самый большой в России мазагин брендовых товаров \(shop). Расшифровывается как \(decoding).\nГод основания \(yearOfFoundation).\nНаходится по адресу \(address).\nБлижайшая станция метро \(metro).\nЗдесь можно приобрести женские, мужские, детские и косметические товары таких брендов как:\t\(brandOne),\t\(brandTwo),\t\(brandFour),\t\(brandOfFive)\tи другие.\nКоличество торговых этажей \(numberOfFoors)."

print(text)


//Разбейте собственное имя на символы, перенося каждую букву на новую строку.

for c in "Tatiana" {
    
    print(c)
}

//Создайте переменную типа Int и переменную типа String. Тип Int преобразуйте в String и с помощью бинарного оператора сложите 2 переменные в одну строку.

var costOfApple = 100

var nameOfApple = "Антоновка"

var stringCostOfApple = String(costOfApple)

var textInStiker = "Яблоки сорта" + " " + nameOfApple + " " + stringCostOfApple + " " + "рублей за кг."

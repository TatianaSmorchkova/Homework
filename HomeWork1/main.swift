//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation


//Создать 10 разных Dictionary с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском

var costOfFruits = ["Яблоко" : 100, "Апельсин" : 102, "Бананы" : 99, "Мандарины" : 120, "Виноград" : 150, "Манго" : 160]

let address = ["Гагарина" : 7, "Октябрьская" : 10, "Мира" : 20]

let capitalsOfCountry = ["Франция" : "Париж", "Германия" : "Берлин", "Россия" : "Москва"]

let weatherOfDays = ["20 февраля" : -20, "21 апреля" : 9, "23 июля" : 30]

let monthsRu = [1 : "январь", 2 : "февраль", 3 : "март", 4 : "апрель", 5 : "май", 6 : "июнь", 7 : "июль", 8 : "август", 9 : "сентярь", 10 : "октябрь", 11 : "ноябрь", 12 : "декабрь"]

let monthsEng = [1 : "January", 2 : "February", 3 : "March", 4 : "April", 5 : "May", 6 : "June", 7 : "July", 8 : "August", 9 : "September", 10 : "October", 11 : "November", 12 : "December"]

let symbolsOfYears = [2022 : "Тигр", 2023 : "Кролик", 2024 : "Дракон"]

let resultsOfExams = ["Русский" : 5, "Математика" : 4, "Обществознание" : 5]

let russianBooks = ["Толстой" : "Война и мир", "Гоголь" : "Мертвые души", "Достоевский" : "Преступление и наказание"]

let dollarOfExchangeRate = ["20 апреля" : 78.69, "21 апреля" : 77.30, "22 апреля" : 76.98 ]


//Соберите все ключи и значения каждого Dictionary и распечатайте в консоль

print(costOfFruits.keys)
print(costOfFruits.values)

print(address.keys)
print(address.values)

print(capitalsOfCountry.keys)
print(capitalsOfCountry.values)

print(weatherOfDays.keys)
print(weatherOfDays.values)

print(monthsRu.keys)
print(monthsRu.values)

print(monthsEng.keys)
print(monthsEng.values)

print(symbolsOfYears.keys)
print(symbolsOfYears.values)

print(resultsOfExams.keys)
print(resultsOfExams.values)

print(russianBooks.keys)
print(russianBooks.values)

print(dollarOfExchangeRate.keys)
print(dollarOfExchangeRate.values)


//Создайте пустой Dictionary и через условный оператор if проверьте пустой он или нет, если пустой то в условии добавьте в него пару значений

var dictionaryOne = [String : String]()

if dictionaryOne.isEmpty {
    print("Словарь пустой")
} else {
    print("Словарь непустой")
}

//Cоздайте словарь — ключ: «иномарка», «значение»: название машины.

var brandsOfCars = ["Иномарка" : "Tesla"]


//Добавьте в него значение по ключу - «отечественная».

brandsOfCars["Отечественная"] = "Lada"
 

//Распечатайте ключи и значения в консоль. Затем отдельно только значения.

for (key, value) in brandsOfCars {
 print("key = \(key), value = \(value)")
}

for value in brandsOfCars.values {
 print("value = \(value)")
}
   
//Удалите из словаря иномарку по ключу (двумя способами: через nil и removeValue().

brandsOfCars.removeValue(forKey: "Иномарка")

brandsOfCars["Иномарка"] = nil

//Создайте словарь, где ключ — фамилия солдата, а значение — его приветствие.

var greetingOfSoldier = ["Кузнецов" : "Привет", "Иванов" : "Здравствуй", "Сидоров" : "Добрый день"]

//В цикле пройдитесь по всем ключам и распечатайте фамилию каждого солдата.

for soldier in greetingOfSoldier.keys {
 print("\(soldier)")
}

//Сделайте тоже самое со значениями и распечатайте приветствие каждого солдата.

for greeting in greetingOfSoldier.values {
 print("\(greeting)")
}

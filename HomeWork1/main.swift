//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

// Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую. Вывести всё в консоль.

let numbersMassive = [4, 600, 40, 17, 9, 18, 33, 98]

let sortedNumbersMax = numbersMassive.sorted { $0 < $1 }
print(sortedNumbersMax)

let sortedNumbersMin = numbersMassive.sorted { $0 > $1 }
print(sortedNumbersMin)


//Создать метод который запрашивает имена друзей, после этого имена положить в массив. Массив отсортировать по количеству букв в имени.

func printNamesFriends(nameOne: String, nameTwo: String, nameThree: String, nameFour: String) {
    
    
    let allNames = [nameOne, nameTwo, nameThree, nameFour]
    let sortedNames = allNames.sorted { $0.count < $1.count }
    print(sortedNames)
}
printNamesFriends(nameOne: "Вероника", nameTwo: "Ян", nameThree: "Ваня", nameFour: "Аня")


//Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.

var dictionary = [String: Double]()
func funcWithDictionary(key: String, value: Double) {
    dictionary = [key: value]
    for znachenie in dictionary {
        print(znachenie)
    }
}

//Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.


func massivesInFunc(massivString: [String], massivInt: [Int]) {
    var massivOne = massivString
    var massivTwo = massivInt
    if massivOne.isEmpty {
        massivOne.append("Новый элемент")
        print(massivOne)
    }
    
    if massivTwo.isEmpty {
        massivTwo.append(1)
        print(massivTwo)
    }
}
massivesInFunc(massivString: [], massivInt: [])

//Написать 10 своих замыканий на примере сортировок массивов.

let surnamesOfWorkers = ["Петров", "Кузнецов", "Огородников", "Чехов", "Зуев"]

let surnamesOne = surnamesOfWorkers.sorted { $0 < $1 }

print(surnamesOne)

let surnamesTwo = surnamesOfWorkers.sorted { $1 < $0 }

print(surnamesTwo)

let surnamesThree = surnamesOfWorkers.sorted { $0.count < $1.count }

print(surnamesThree)

let surnamesFour = surnamesOfWorkers.sorted { $0.count > $1.count }

print(surnamesFour)

let surnamesFive = surnamesOfWorkers.filter{ $0.hasPrefix("О") }

print(surnamesFive)

let array = [1, 5, 64, 78, 2, 15, 100]

let sortedArrayOne = array.sorted(by: <)

print(sortedArrayOne)

let sortedArrayTwo = array.filter({$0 < 3})

print(sortedArrayTwo)

let sortedArrayThree = array.filter({$0 % 3 == 0})

print(sortedArrayThree)

let sortedArrayFour = array.sorted(by: >)

print(sortedArrayFour)

let sortedArrayFive = array.filter({$0 % 2 == 0})

print(sortedArrayFive)


//Написать функцию, которая принимает массив, проверяет — пустой или нет. И если пустой — нужно записать туда значения.

func massivesInFunc(massivString: [String]) {
    var newMassiv = massivString
    if newMassiv.isEmpty {
        newMassiv.append("Новый элемент")
        
    }
    print(newMassiv)
}
massivesInFunc(massivString: [])

//Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль. Всё вывести в консоль.
func sait(name: String, surname: String, nik: String, email: String, password: String) {
    print("ФИО пользователя: \(name) \(surname), Никнейм: \(nik), email: \(email), Пароль: \(password)")
}
sait(name: "Иван", surname: "Петров", nik: "PetrovIvan", email: "petrov@yandex.ru", password: "111petrIvan111")

//Написать функции которые принимают в качестве аргументов массивы и словари и проверяют: пустые или нет. Если пустые — добавляют туда значения и выводят в консоль.

func newFunc(massivInt: [Int], dictionaryString: [String: String]) {
    var massivIntNew = massivInt
    var dictionaryStringNew = dictionaryString
    if massivIntNew.isEmpty {
        massivIntNew.append(100)
    }
    print(massivIntNew)
    
    if dictionaryStringNew.isEmpty {
        dictionaryStringNew["Заказ"] = "Озон"
    }
    print(dictionaryStringNew)
}
newFunc(massivInt: [], dictionaryString: [ : ])

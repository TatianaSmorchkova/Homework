//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Посоздавайте свои типы данных через typealias

//пример 1

typealias numberOfshoes = Int

typealias nunmberOfdress = Int

typealias numberOfbelt = Int

let a1: numberOfshoes = 6

let b1: nunmberOfdress = 7

let c1: numberOfbelt = 2

let totalOfpurchese = a1 + b1 + c1

//пример 2

typealias flightTimetoParis = Double

typealias flightTimetoMadrid = Double

let paris: flightTimetoParis = 3.5

let madrid: flightTimetoMadrid = 1.5

let totalTraveltime = paris + madrid

//пример 3

typealias student = String

typealias phrase = String

let n1: student = "Tom"

let n2: student = "Ann"

let n3: student = "Piter"

let n4: student = "Kate"

let n5: phrase = "In my class 4 friends:"

let total = n5 + " " + n1 + ", " + n2 + ", " + n3 + ", " + n4

//Создайте различные выражения с приведением типа

//пример 1

var numberOne = 15

var numberTwo = 5.2

var onePlustwo = numberOne + Int(numberTwo)

var oneMinustwo = Double(numberOne) - numberTwo

var oneMultiplytwo = Double(numberOne) * (numberTwo)

//пример 2

typealias cost = Double

var costOfapple = 105

var costOforange: cost = 150.5

var totalOfcost = Double(costOfapple) + costOforange

//пример 3

let waterDay1 = 2

let waterDay2 = 2.5

let waterDay3 = 1.5

Int(waterDay2)

String(waterDay1)

UInt8(waterDay3)

Double(waterDay1)

Float(waterDay1)

// Так же как в математеке поиграйтесь с выражениями - + /

//Пример 1

6 + 100

5 - 7

3 * 5

20 / 5

//Пример 2

let primer1 = 3 + 1

let primer2 = 4 * 4

var premer3 = primer1 + primer2

var primer4 = (primer1 + primer2) * 2

//Пример 3

let number1 = 5

let number2 = 4.5

let number3 = 7.5

let number4 = 9

number1 + number4

number2 * number3

Double(number1) + number2

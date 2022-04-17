//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Посоздавайте свои типы данных через typealias

//пример 1

typealias numberOfShoes = Int

typealias numberOfDress = Int

typealias numberOfBelt = Int

let shoesCount: numberOfShoes = 6

let dressCount: numberOfDress = 7

let beltCount: numberOfBelt = 2

let totalOfPurchese = shoesCount + dressCount + beltCount

//пример 2

typealias flightTimeToParis = Double

typealias flightTimeToMadrid = Double

let paris: flightTimeToParis = 3.5

let madrid: flightTimeToMadrid = 1.5

let totalTravelTime = paris + madrid

//пример 3

typealias student = String

typealias phrase = String

let firstStudentName: student = "Tom"

let secondStudentName: student = "Ann"

let thirdStudentName: student = "Piter"

let fourthStudentName: student = "Kate"

let text: phrase = "In my class 4 friends:"

let total = text + " " + firstStudentName + ", " + secondStudentName + ", " + thirdStudentName + ", " + fourthStudentName

//Создайте различные выражения с приведением типа

//пример 1

var milkVolumeOne = 15

var milkVolumeTwo = 5.2

var onePlusTwo = milkVolumeOne + Int(milkVolumeTwo)

var oneMinusTwo = Double(milkVolumeOne) - milkVolumeTwo

var oneMultiplyTwo = Double(milkVolumeOne) * (milkVolumeTwo)

//пример 2

typealias cost = Double

var costOfApple = 105

var costOfOrange: cost = 150.5

var totalOfCost = Double(costOfApple) + costOfOrange

//пример 3

let waterDayOne = 2

let waterDayTwo = 2.5

let waterDayThree = 1.5

Int(waterDayTwo)

String(waterDayOne)

UInt8(waterDayThree)

Double(waterDayOne)

Float(waterDayOne)

// Так же как в математеке поиграйтесь с выражениями - + /

//Пример 1

6 + 100

5 - 7

3 * 5

20 / 5

//Пример 2

let primerOne = 3 + 1

let primerTwo = 4 * 4

var premerThree = primerOne + primerTwo

var primerFour = (primerOne + primerTwo) * 2

//Пример 3

let numberOne = 5

let numberTwo = 4.5

let numberThree = 7.5

let numberFour = 9

numberOne + numberFour

numberTwo * numberThree

Double(numberOne) + numberTwo

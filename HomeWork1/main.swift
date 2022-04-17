//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

// Задание 1: Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.

var temperature: Int = -10

let floor: Int = 5

var age: UInt = 10

let growth: UInt = 165

var costOne: Float = 100.5

let costTwo: Float = 55.55

var numberOne: Double = 157.69486968

let numberTwo: Double = -837.78968995

var shop: String = "Lego"

let name: String = "Tom"

//max и min значения

let minInt = Int.min

let maxInt = Int.max

let uIntMax = UInt.max

let uIntMin = UInt.min

let floatMax = Float.greatestFiniteMagnitude

let floatMin = -Float.greatestFiniteMagnitude

let doubleMax = Double.greatestFiniteMagnitude

let doubleMin = -Double.greatestFiniteMagnitude

//Задание 2: Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.

typealias nameOfProduct = String

typealias amountOfProduct = Int

var productOne: nameOfProduct = "Apple"

var amountOne: amountOfProduct = 10

var productTwo: nameOfProduct = "Orange"

var amountTwo: amountOfProduct = 5

var productThree: nameOfProduct = "Banana"

var amountThree: amountOfProduct = 8

//Задание 3: Напишите различные выражения с приведением типа.

let mounth = 12

print(mounth)

let mounthTwo = Double(mounth)

print(mounthTwo)


let days = 365.5

Int(days)

print(days)

//Задание 4: Посоздавайте свои переменные и константы. Имена, возраст, отчества и тд.

let myName = "Татьяна"

let myPatronymic = "Михайловна"

let mySurname = "Сморчкова"

let dateOfBirth = "21 апреля 1996 года"

var myAge = 25

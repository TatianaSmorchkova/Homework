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

var cost1: Float = 100.5

let cost2: Float = 55.55

var number1: Double = 157.69486968

let number2: Double = -837.78968995

var shop: String = "Lego"

let name: String = "Tom"

//max и min значения

let minInt = Int.min

let maxInt = Int.max

let Unit = UInt.max

let Uint = UInt.min

let fmax = Float.greatestFiniteMagnitude

let fmin = -Float.greatestFiniteMagnitude

let dmax = Double.greatestFiniteMagnitude

let dmix = -Double.greatestFiniteMagnitude

//Задание 2: Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.

typealias nameOfproduct = String

typealias amountOfproduct = Int

var product1: nameOfproduct = "Apple"

var amount1: amountOfproduct = 10

var product2: nameOfproduct = "Orange"

var amount2: amountOfproduct = 5

var product3: nameOfproduct = "Banana"

var amount3: amountOfproduct = 8

//Задание 3: Напишите различные выражения с приведением типа.

let mounth = 12

print(mounth)

let mounth2 = Double(mounth)

print(mounth2)


let days = 365.5

Int(days)

print(days)

//Задание 4: Посоздавайте свои переменные и константы. Имена, возраст, отчества и тд.

let myName = "Татьяна"

let myPatronymic = "Михайловна"

let mySurname = "Сморчкова"

let dateOfBirth = "21 апреля 1996 года"

var myAge = 25


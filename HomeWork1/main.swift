//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Домашняя работа №6

//Создать 5 разных Tuples с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском

let monthRu = ("январь", "февраль", "март", "апрель", "май", "июнь", "июль", "август", "сентярь", "октябрь", "ноябрь", "декабрь")

let monthEng = ("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")

let promotionOfEaster = ("Пасха", "с 18 по 24 апреля", -25, "Десяток яиц")

let recipeOfLemonade = ("Лимон", 5, "Мята", 4, "Лайм", 2)

let ratingApps = ("Впрок", 4.8, "ЦУМ", 4.9, "Озон", 4.9)

//Распечатайте Tuples 3-мя разными способами

print(monthRu)
print(monthEng)
print(promotionOfEaster)
print(recipeOfLemonade)
print(ratingApps)


let (месяц1, месяц2, месяц3, месяц4, месяц5, месяц6, месяц7, месяц8, месяц9, месяц10, месяц11, месяц12) = monthRu
print(месяц1, месяц2, месяц3, месяц4, месяц5, месяц6, месяц7, месяц8, месяц9, месяц10, месяц11, месяц12)
let (month1, month2, month3, month4, month5, month6, month7, month8, month9, month10, month11, month12) = monthEng
print(month1, month2, month3, month4, month5, month6, month7, month8, month9, month10, month11, month12)
let (holiday, period, discount, product) = promotionOfEaster
print(holiday, period, discount, product)
let (fruitFirst, countFirst, fruitSecond, countSecond, fruitThird, countThird) = recipeOfLemonade
print(fruitFirst, countFirst, fruitSecond, countSecond, fruitThird, countThird)
let (appFirst, gradeFirst, appSecond, gradeSecond, appThird, gradeThird) = ratingApps
print(appFirst, gradeFirst, appSecond, gradeSecond, appThird, gradeThird)


print(monthRu.0, monthRu.1, monthRu.2, monthRu.3, monthRu.4, monthRu.5, monthRu.6, monthRu.7,monthRu.8, monthRu.9, monthRu.10, monthRu.11)
print(monthEng.0, monthEng.1, monthEng.2, monthEng.3, monthEng.4, monthEng.5, monthEng.6, monthEng.7, monthEng.8, monthEng.9, monthEng.10, monthEng.11)
print(promotionOfEaster.0, promotionOfEaster.1, promotionOfEaster.2, promotionOfEaster.3)
print(recipeOfLemonade.0, recipeOfLemonade.1, recipeOfLemonade.2, recipeOfLemonade.3)
print(ratingApps.0, ratingApps.1, ratingApps.2, ratingApps.3, ratingApps.4, ratingApps.5)


//Создайте пустой Tuples (Можно гуглить)

var tupleOne: (key: String, val: Double)? = nil

//Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.

let myPurchases = ("молоко", "яблоки", "курицу")

print(myPurchases)
print(myPurchases.0, myPurchases.1, myPurchases.2)
let (drink, fruits, meat) = myPurchases
print(drink,fruits, meat)
print("Сегодня я купила: \(drink), \(fruits), \(meat)")


//Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами:
//первый - превышение скорости: количество пойманных;
//второй - вождение нетрезвым: количество пойманных;
//третий - бесправники: количество пойманных.
//Распечатайте наших бедокуров в консоль через print().

let offendersOnRoads = (overSpeed: 10, drunkDriving: 4, lawless: 3)

print(offendersOnRoads)

//Выведите каждый параметр в консоль. Тремя способами.

print(offendersOnRoads.overSpeed, offendersOnRoads.drunkDriving, offendersOnRoads.lawless)
print(offendersOnRoads.0, offendersOnRoads.1, offendersOnRoads.2)
let (violationFirst, violationSecond, violationThird) = offendersOnRoads
print(violationFirst, violationSecond, violationThird)

//Создайте второй кортеж — нашего напарника. Значения задайте другие.

let offendersOnRoadsMyColleague = (overSpeed: 9, drunkDriving: 1, lawless: 1)

//Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым. Вывести в консоль тремя способами.
let resultOne = (offendersOnRoads.overSpeed - offendersOnRoadsMyColleague.overSpeed)
let resultTwo = (offendersOnRoads.drunkDriving - offendersOnRoadsMyColleague.drunkDriving)
let resultThird = (offendersOnRoads.lawless - offendersOnRoadsMyColleague.lawless)

let totalResults = (resultOne, resultTwo, resultThird)
print(totalResults)
print(totalResults.0, totalResults.1, totalResults.2)
let (numberOne, numberTwo, numberThird) = totalResults
print(numberOne, numberTwo, numberThird)

//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Сделать класс Люди, класса будут проперти родственники, соседи и тд (всё опционально).
//Создать нужно более 25 человек.

class Relative {
    var brothers: Int? = 1
    var sisters: Int? = 2
    var cousins: Int? = 2
    var aunts: Int?  = 2
    var uncles: Int?  = 3
}

class Neighbour {
    var homeOne: Int? = 5
    var homeTwo: Int? = 3
    var homeThree: Int? = 1
}

class Colleague {
    var iosDev: Int? = 7
    var androidDev: Int? = 5
}

class PeopleNew {
    var relative: Relative? = Relative()
    var neighbour: Neighbour? = Neighbour()
    var colleague: Colleague? = Colleague()
}


//Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, теть, дядь, и так далее

let peopleNew = PeopleNew()

peopleNew.relative?.aunts
peopleNew.colleague?.iosDev
peopleNew.neighbour?.homeOne

//Создать класс животных и проперти - корова, коза, собака и тд
//Создать класс растения и проперти - трава, цветы и тд


class Plant {
    var kinds: [String] = ["chamomile", "rose", "cactus"]
}

class Animal {
    var kinds: [String] = ["pig", "cow", "dog", "cat", "monkey"]
}

class People {
    var names: [String] = ["Andrey", "Tatiana", "Yan"]
}

var plant1 = Plant()
var animal1 = Animal()
var people1 = People()


//Положить их всех в массив и отсортировать по алфавиту и по классу - Люди - животные - растения

let arrayClass = [plant1.kinds] + [animal1.kinds] + [people1.names]


plant1.kinds.sorted()
animal1.kinds.sorted()
people1.names.sorted()

var sortedArray = people1.names.sorted() + animal1.kinds.sorted() + plant1.kinds.sorted()

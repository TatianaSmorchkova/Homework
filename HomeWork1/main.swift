//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Создать 5 констант со СТРОКАМИ которые содержат цифры и посчитайте их используя новые инструменты.

let numberOne = "10"
let numberTwo = "20"
let numberThree = "30"
let numberFour = "10"
let numberFive = "10"

if let numberOne = Int(numberOne), let numberTwo = Int(numberTwo), let numberThree = Int(numberThree), let numberFour = Int(numberFour), let numberFive = Int(numberFive){
    numberOne + numberTwo + numberThree + numberFour + numberFive
}

//Создать 3 константы со значением nil.

let oranges : Int? = nil
let bananas : Int? = nil
let mangos : Int? = nil

if let oranges = oranges, let bananas = bananas, let mangos = mangos {
    oranges + bananas + mangos
} else {
    print("fruit nil")
}

//Создать 5 опциональных типов констант и установите им значения.

let objectInpencilCase : String? = "Pen"
let myAge : Int? = 26
let temperatureOfPatient : Double? = 36.6
let delayOfFlight : Bool? = false
let daysOfVacation : String? = "10"


//Вспоминаем прошлые уроки : Распечатайте свое имя в цикле for.

let myName = "Tatiana"

for letter in myName {
    print(letter)
}

//Создайте массив с возрастом всех членов вашей семьи и распечатайте в консоли через цикл for.

let myFamily = ["Mother", "Father", "Sister"]
let ageOffamilyMembers = ["48", "51", "19"]

for ageOffamilyMember in 0...2 {
    print("\(myFamily[ageOffamilyMember])  \(ageOffamilyMembers[ageOffamilyMember])")
}

let familyAge = [("Mother", 48), ("Father", 51), ("Sister", 19)]

for ageOfMemberFamily in familyAge {
    print(ageOfMemberFamily)
}

//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Создать цикл в цикле. В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов:)


calculation: for _ in 0...200 {
    for i in 0..<20 {
        if i == 15 {
            break calculation
        }
        print(i)
    }
}

//Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд

var ageOfPerson = 26

if case 0...6 = ageOfPerson {
    print("Иди в садик")
} else if case 7...18 = ageOfPerson {
    print("Иди в школу")
} else if case 19...22 = ageOfPerson {
    print("Иди в универ")
} else if case 23...60 = ageOfPerson{
    print("Иди на работу")
} else if case 61...110 = ageOfPerson{
    print("Иди на пенсию")
}

switch ageOfPerson {
case 0...6:
    print("Иди в садик")
case 7...18:
    print("Иди в школу")
case 19...22:
    print("Иди в универ")
case 23...60:
    print("Иди на работу")
case 61...110:
    print("Иди на пенсию")
default:
    break
}


// Создать все циклы for in которые вы знаете ,максимально больше приветствуется

let surname = "Smorchkova"
for letter in surname {
    print(letter)
}

let names = ["Таня", "Андрей", "Вика", "Сергей"]
for name in names {
    print("Доброе утро \(name)")
}

let coinsOfFriends = ["Ани": 5, "Алены" : 4, "Регины" : 6]
for (nameOfFriend, chislo) in coinsOfFriends {
    print("У \(nameOfFriend) есть \(chislo) монет")
}

for index in 5...10 {
    print("\(index) умножить на 2 будет \(index * 2)")
}

//в switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и и высказывать через print мнение

var score = 9

if score == 1 {
    print("Отвратительно")
} else if score == 2 {
    print("Очень ужасно")
} else if score == 3 {
    print("Очень плохо")
} else if score == 4 {
    print("Плохо")
} else if score == 5 {
    print("Терпимо")
} else if score == 6 {
    print("Нормально")
} else if score == 7 {
    print("Хорошо")
} else if score == 8 {
    print("Очень хорошо")
} else if score == 9 {
    print("Прекрасно")
} else if score == 10 {
    print("Замечательно")
} else if score == 11 {
    print("Великолепно")
} else if score == 12 {
    print("Лучше всех")
}


switch score {
case 1:
print("Отвратительно")
case 2:
print("Очень ужасно")
case 3:
print("Очень плохо")
case 4:
print("Плохо")
case 5:
print("Терпимо")
case 6:
print("Нормально")
case 7:
print("Хорошо")
case 8:
print("Очень хорошо")
case 9:
print("Прекрасно")
case 10:
print("Замечательно")
case 11:
print("Великолепно")
case 12:
print("Лучше всех")
default:
    break
}


//Создайте массив(без тюплов) с именами всех членов вашей семьи включая родственников что б количество имен не менее 10 было и отсортируйте, распечатайте по алфавиту их в консоль

let family = ["Ольга", "Михайил", "Татьяна", "Наталья", "Андрей", "Зоя", "Зина", "Сергей", "Елена", "Иван", "Алексей"]

let familySorted = family.sorted()
print(familySorted)

//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Домашняя работа №12

//Написать программу, в которой создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов - *create*(выводит произведение свойств),*destroy*(отображает что дом уничтожен)и т.п.

class House {
    var width: Int
    var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func create() {
        print(width * height)
    }
    func destroy() {
        print("Дом уничтожен")
    }
}

let newHouse = House(width: 25, height: 100)
newHouse.create()
newHouse.destroy()

//Создайте класс с методами, которые сортируют массив учеников.

class Students {
    let massiveOfStudents: [String]
    
    init(students: [String]) {
        self.massiveOfStudents = students
    }
    
    func sortedStudents() {
        print(massiveOfStudents.sorted())
    }
}
let allStudents = Students(students:["Олеся", "Яна", "Анна", "Александра"])
allStudents.sortedStudents()

//Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.

struct CostOfProduct {
    var product: String
    var cost: Int
}
var costOfApple = CostOfProduct(product: "Apple", cost: 120)
costOfApple.cost
costOfApple.product


//различие класса от структуры:
//1) Когда создаем экземпляр класса, то создается ссылка на класс. А структура копирует данные.
//2) У классов инициализация создается вручную с помощью init, а у структуры автоматически.
//3) При большом объеме кода целесообразнее использовать классы, наоборот - структуры.


/*
 Дополнительно(на закрепление всех пройденных тем): Напишите простую программу, которая называет комбинации в покере.
 1)Записываем комбинации в массив.
 2)Если определённая комбинация - выводим соответствующую запись в print.
 
 Результат в консоли примерно такой:
 "У вас бубновый стрит флеш ".
 Подсказки:
 - для мастей можно использовать перечисления(enum),
 - В зависимости от комбинации - в консоли печатаем тот или иной ответ.
 */


enum Masti: String {
    case piki = "пиковый"
    case chervi = "червовый"
    case trefi = "трефовый"
}

enum Combination: String {
    case fleshRoyal = "флеш роял"
    case streetFlesh = "стрит флеш"
    case flesh = "флеш"
}

let arrayOfCombination: [Combination] = [.fleshRoyal, .streetFlesh, .flesh]

for element in arrayOfCombination {
    
    switch element {
    case .fleshRoyal:
        print("У вас \(Masti.piki.rawValue) \(element.rawValue)")
    case .streetFlesh:
        print("У вас \(Masti.chervi.rawValue) \(element.rawValue)")
    case .flesh:
        print(("У вас \(Masti.trefi.rawValue) \(element.rawValue)"))
    }
}


/*
 3) Написать класс , а в нем метод который будет принимать букву (одну, может быть и типа string, просто будете передавать ему одну букву) и возвращать все имена которые начинаются на эту букву.
 К примеру, А - Алексей, Александр, Артем, Антон и т. д. Внутри метода или полем класса (тут как удобно, не сильно критично) будет задаваться массив строк (string) в котором будут прописаны имена. Имена откуда-то подгружать не надо, их надо просто захардкодить. Метод должен возвращать отфильтрованный массив с именами.
 Так же написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль с новой строки каждое имя. И распечатаете на консоль то что у вас получилось отфильтровать.
 */

class Names {
    let massiveOfNames: [String]
    
    init(names: [String]) {
        self.massiveOfNames = names
    }
    
    func sortedNames() {
        print(massiveOfNames.filter{ $0.hasPrefix("А")
        })
    }
    func sortedName(name: [String]) {
        for elemets in name {
            print(elemets)
        }
    }
}

let allNames = Names(names:["Гриша", "Дмитрий", "Петр", "Антон", "Васили", "Алексей"])
allNames.sortedNames()

allNames.sortedName(name: ["Гриша", "Дмитрий", "Петр", "Антон", "Васили", "Алексей"])


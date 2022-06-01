//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation



//Создать класс в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.

class Family {
    var mother = "Мама"
    var father = "Папа"
    var kids = ["Старшая дочь", "Младшая дочь"]
    subscript(index: Int) -> String {
        get {
            switch index {
            case 0: return mother
            case 1: return father
            case 2..<(2 + kids.count): return kids [index - 2]
            default: return ""
            }
        }
    }
}

var family = Family()
family[0]
family[1]
family[2]
family[3]


//Создать Индекс который будет принимать число умножать его на 100 и делить на 2.

struct Primer {
    subscript(index: Int) -> Int {
        get {
            return (index * 100) / 2
        }
    }
}

var primer = Primer()
primer[2]

//Создать свой subscript у которого внутри есть оператор if else.

struct Age {
    var ageOfWorker: Int
    subscript(index: Int) -> String {
        get {
            if case 0...18 = ageOfWorker {
                return ("Вы молоды")
            } else if case 19...45 = ageOfWorker {
                return ("Вы нам подходите")
            }
            return "something"
        }
    }
}
var age = Age(ageOfWorker: 30)
age[30]

// Создать класс человек и в нем 3 проперти имя , возраст пол .
class Human {
    var name: String
    var age: Int
    var sex: String
    init(name: String, age: Int, sex: String) {
        self.name = name
        self.age = age
        self.sex = sex
    }
    func printHuman() -> String {
        return "name: \(name), age: \(age), sex: \(sex)"
    }
}
//Создать ещё 2 класса которые наследуються от класса человек и переопределить методы и свойства .

class Women: Human {
    var lastname : String
    init(name: String, age: Int, sex: String, lastname: String) {
        self.lastname = lastname
        super.init(name: name, age: age, sex: sex)
    }
    
    override var name: String {
        set {
            super.name = newValue
        }
        get {
            return super.name + " " + lastname
        }
    }
}
let women = Women(name: "Ann", age: 25, sex: "women", lastname: "Smith")
print(women.name)

class Teacher: Human {
    override func printHuman() -> String {
        return super.printHuman() + "," + " " + "profession: teacher"
    }
}

var teacher = Teacher(name: "Ann", age: 25, sex: "women")
teacher.printHuman()



//Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка (воспользоваться enum для типов данных)

enum TypeDate {
    case Int
    case String
    case Double
    case Float
    case Bool
    case Character
    case UInt
    case UInt8
    case Int16
    case UInt16
    case Int32
    case UInt32
    case Int64
    case UInt64
    case Float80
}


let type: [String: TypeDate] = ["Int": .Int, "String": .String, "Double": .Double, "Float": .Float, "Bool": .Bool, "Character": .Character, "UInt": .UInt, "UInt8": .UInt8, "UInt16": .UInt16, "Int16": .Int16, "UInt32": .UInt32, "UInt64": .UInt64, "Int32": .Int32, "Int64": .Int64, "Float80": .Float80]


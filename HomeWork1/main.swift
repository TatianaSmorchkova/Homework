//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".

class People {
    var name: String
    var growth: Int
    var weight: Int
    var sex: String
    init(name: String, growth: Int, weight: Int, sex: String) {
        self.name = name
        self.growth = growth
        self.weight = weight
        self.sex = sex
    }
    func say() -> String {
        return "Привет"
    }
}
//Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.

class Cook: People {
    override func say() -> String {
        return super.say() + " " + "всем поварам"
    }
}
class Manager: People {
    override func say() -> String {
        return super.say() + " " + "всем менеджерам"
    }
}
class Fighter: People {
    override func say() -> String {
        return super.say() + " " + "всем бойцам"
    }
}

//Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
//В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".


let cook = Cook(name: "Kate", growth: 165, weight: 50, sex: "women")
let manager = Manager(name: "Jack", growth: 180, weight: 80, sex: "men")
let fighter = Fighter(name: "Maks", growth: 175, weight: 90, sex: "men")


var array = [cook, manager, fighter]
for value in array {
    print(value.say())
    print(value.name)
    print(value.growth)
    print(value.weight)
    print(value.sex)
}

//Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.

class Dancer: People {
    var age: Int
    var national: String
    init(name: String, growth: Int, weight: Int, sex: String, age: Int, national: String) {
        self.age = age
        self.national = national
        super.init(name: name, growth: growth, weight: weight, sex: sex)
    }
    override func say() -> String {
        return super.say() + " " + "всем танцорам"
    }
}

let dancer = Dancer(name: "Lili", growth: 168, weight: 55, sex: "women", age: 30, national: "american")

array.append(dancer)

for value in array {
    print(value.name, value.weight, value.growth, value.sex)
    if let newValue = value as? Dancer {
        print(newValue.national, newValue.age)
    }
}

//Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
//Сделала в наследниках выше.

//Вывести все это в обратном порядке(Google в помощь).

var index = array.count - 1

while index >= 0 {
    print(array[index])
    index -= 1
}

//Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).

class Marsianin {
    var planet: String
    var colorOfSkin: String
    var numberOfHands: Int
    init(planet: String, colorOfSkin: String, numberOfHands: Int) {
        self.planet = planet
        self.colorOfSkin = colorOfSkin
        self.numberOfHands = numberOfHands
    }
    
    func sayMarsianin() -> String {
        return "Марсианское приветствие"
    }
}

//Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".

class AlienOne: Marsianin {
    override func sayMarsianin() -> String {
        return ("Привет земляне!")
    }
}
class AlienTwo: Marsianin {
    override func sayMarsianin() -> String {
        return ("Привет марсиане!")
    }
}
class AlienThree: Marsianin {
    override func sayMarsianin() -> String {
        return ("Привет всем жителям вселенной!")
    }
}
let alienOne = AlienOne(planet: "Neptun", colorOfSkin: "blue", numberOfHands: 3)
alienOne.sayMarsianin()
let alienTwo = AlienTwo(planet: "Saturn", colorOfSkin: "orange", numberOfHands: 4)
let alienThree = AlienThree(planet: "Pluton", colorOfSkin: "green", numberOfHands: 5)

//Объединить всех people и Марсианинов) в один массив.

var arrayAll = Array<AnyObject>()
arrayAll = [
    Cook(name: "Kate", growth: 165, weight: 50, sex: "women"),
    Manager(name: "Jack", growth: 180, weight: 80, sex: "men"),
    Fighter(name: "Maks", growth: 175, weight: 90, sex: "men"),
    Dancer(name: "Lili", growth: 168, weight: 55, sex: "women", age: 30, national: "american"),
    AlienOne(planet: "Neptun", colorOfSkin: "blue", numberOfHands: 3),
    AlienTwo(planet: "Saturn", colorOfSkin: "orange", numberOfHands: 4),
    AlienThree(planet: "Pluton", colorOfSkin: "green", numberOfHands: 5)
]


//В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод
for item in arrayAll {
    if item is People {
        print("\(item) тип People")
    }
    if let newItem = item as? People {
        print(newItem.name, newItem.growth, newItem.weight, newItem.sex, newItem.say())
    }
}

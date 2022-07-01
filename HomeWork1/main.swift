//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

print("Hello, World!")

//Описать несколько структур – любой легковой автомобиль и любой грузовик.
//Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

enum ActionOfCar {
    case startTheEngine
    case turnOffTheEngine
    case openTheDoor
    case closeTheDoor
    case loadTheCargo
    case unloadCargo
}

struct PassengerCar: Hashable {
    var brand: String
    var yearOfIssue: Int
    var bodyVolume: Int
    var statusOfEngine: Bool
    var statusOfWindows: Bool
    var statusOfDoor: Bool
    var statusOfCargo: Bool
    var statusOfTrunk: Int

    
    
    mutating func performCar(action: ActionOfCar) {
        let actionOfCar = ActionOfCar.startTheEngine
        switch actionOfCar {
            
        case .startTheEngine:
            statusOfEngine = true
        case .turnOffTheEngine:
            statusOfEngine = false
        case .openTheDoor:
            statusOfDoor = true
        case .closeTheDoor:
            statusOfDoor = false
        case .loadTheCargo:
            statusOfCargo = true
        case .unloadCargo:
            statusOfCargo = false
        }
    }
}

struct Truck: Hashable {
    var brand: String
    var yearOfIssue: Int
    var bodyVolume: Int
    var statusOfEngine: Bool
    var statusOfWindows: Bool
    var statusOfDoor: Bool
    var statusOfCargo: Bool
    var statusOfTrunk: Int
    
    mutating func performTruck(action: ActionOfCar) {
        let actionOfTruck = ActionOfCar.startTheEngine
        switch actionOfTruck {
            
        case .startTheEngine:
            statusOfEngine = true
        case .turnOffTheEngine:
            statusOfEngine = false
        case .openTheDoor:
            statusOfDoor = true
        case .closeTheDoor:
            statusOfDoor = false
        case .loadTheCargo:
            statusOfCargo = true
        case .unloadCargo:
            statusOfCargo = false
}

    }
}
//Инициализировать несколько экземпляров структур. Применить к ним различные действия.

var carFirst = PassengerCar(brand: "Kia", yearOfIssue: 2019, bodyVolume: 1000, statusOfEngine: true, statusOfWindows: true, statusOfDoor: false, statusOfCargo: true, statusOfTrunk: 1000)
carFirst.performCar(action: .startTheEngine)

var truckNew = Truck(brand: "Toyota", yearOfIssue: 2020, bodyVolume: 2000, statusOfEngine: true, statusOfWindows: true, statusOfDoor: true, statusOfCargo: true, statusOfTrunk: 3000)
truckNew.performTruck(action: .closeTheDoor)

var carSecond = PassengerCar(brand: "BMW", yearOfIssue: 2021, bodyVolume: 1500, statusOfEngine: false, statusOfWindows: false, statusOfDoor: false, statusOfCargo: false, statusOfTrunk: 1200)
carSecond.performCar(action: .loadTheCargo)

//Положить объекты структур в словарь как ключи! а их названия как строки например var dict = [structCar: "structCar"]

var dict: [AnyHashable: String] = [carFirst: "carFirst", carSecond: "carSecond", truckNew: "truckNew"]

//Почитать о Capture List - и описать своими словами и сделать скрин своего примера и объяснения

var number = 12
var clouser1 = { [number] in
    number + 2 // было number +=2 : так как "number" захваченное значение, то изменить с помощью оператора += его нельзя
}

var clouser2 = {
    number -= 4
}

clouser1()
clouser2()

print(number)

//мой пример:

var greetings = "Hello!"
var closure = { [greetings] in
print (greetings)
}
greetings = "Ciao"
let greetingClosure = closure
greetingClosure()

//Комментарий: Capture Lists используется, если нам необходимо, чтобы данные не менялись перед объявлением closure

//Набрать код который на белом скрине понять в чем там проблема и решить эту проблему

class Car {
    weak var driver: Men?
    
    deinit {
        print("машина удалена из памяти")
    }
}

class Men {
    var myCar: Car?
    
    deinit {
        print("мужчина удален из памяти")
    }
}
var car: Car? = Car()
var men: Men? = Men()

car?.driver = men
men?.myCar = car

car = nil
men = nil

//У нас есть класс мужчины и его паспорта. Мужчина может родиться и не иметь паспорта, но паспорт выдается конкретному мужчине и не может выдаваться без указания владельца. Чтобы разрешить эту проблему, ссылку на паспорт у мужчины сделаем обычной опциональной, а ссылку на владельца у паспорта – константой. Также добавим паспорту конструктор, чтобы сразу определить его владельца. Таким образом, человек сможет существовать без паспорта, сможет его поменять или выкинуть, но паспорт может быть создан только с конкретным владельцем и никогда не может его сменить. Повторить все что на черном скрине и решить проблему соблюдая все правила!

class Man {
    var passport: Passport?
    deinit{
        print("мужчина удален из памяти")
    }
}

class Passport {
    let man: Man
    
    init(man: Man) {
        self.man = man
    }

    deinit {
        print("паспорт удален из памяти")
    }
}
var man: Man? = Man()
var passport: Passport? = Passport(man: man!)
man?.passport = passport
passport = nil
man?.passport = nil
man = nil

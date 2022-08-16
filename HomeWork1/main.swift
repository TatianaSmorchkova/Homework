//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation


//Реализовать структуру IOSCollection и создать в ней copy on write по типу - https://www.youtube.com/watch?v=QsoqHGgX2rE&t=594s

func address(of object: UnsafeRawPointer) -> String {
    let addr = Int(bitPattern: object)
    return String(format: "%p", addr)
}

func address(off value: AnyObject) -> String {
    return "\(Unmanaged.passUnretained(value).toOpaque())"
}


struct IOSCollection {
    var version = 1
}

class Ref<T> {
    var value: T
    init(value: T) {
    self.value = value
    }
}

struct Container<T> {
    var ref: Ref<T>
    init(value: T) {
        self.ref = Ref(value: value)
    }

var value: T {
    get {
        ref.value
    }
    set {
        guard (isKnownUniquelyReferenced(&ref)) else {
            ref = Ref(value: newValue)
            return
        }
        ref.value = newValue
    }
}
}
var iosCollection = IOSCollection()
var containerOne = Container(value: iosCollection)
var containetTwo = containerOne

address(off: containerOne.ref)
address(off: containetTwo.ref)


containetTwo.value.version = 5

address(off: containerOne.ref)
address(off: containetTwo.ref)


//Создать протокол Hotel с инициализатором который принимает roomCount, после создать class HotelAlfa добавить свойство roomCount и подписаться на этот протокол

protocol Hotel {
    init(roomCount: Int)
}

class HotelAlfa: Hotel {
    var roomCount: Int
    required init(roomCount: Int) {
    self.roomCount = roomCount
}
}

//Создать protocol GameDice у него {get} свойство numberDice далее нужно расширить Int так что б когда мы напишем такую конструкцию "let diceCoub = 4 \n diceCoub.numberDice" в консоле мы увидели такую строку - "Выпало 4 на кубике"

protocol GameDice {
    var numberDice: String {get}

}

extension Int: GameDice {
    var numberDice: String {
        return "Выпало \(self) на кубике"
    }
}

let diceCoub = 5
print(diceCoub.numberDice)


//Создать протокол с одним методом и 2-мя свойствами одно из них сделать явно optional, создать класс, подписать на протокол и реализовать только 1 обязательное свойство

protocol Summary {
    var name: String {get}
    var education: String? {get}
    func summaryReview() -> String
}

extension Summary {
    var education: String? {
        return "высшее"
    }
    
}
    class Interview: Summary {
        var name: String
        
        func summaryReview() ->  String {
            return "Имя кандидата на должность менеджера - \(name)"
    }
        init(name: String) {
            self.name = name
        }
    }
print(Interview(name: "Артем").summaryReview())

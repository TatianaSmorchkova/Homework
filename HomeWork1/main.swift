//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его

extension String {
    subscript(range: Range<Int>) -> String {
        var string = ""
        for i in range {
            string += "\(i)"
        }
        return string
    }
}

let st = "1111"

st[1..<3]

//Расширить Int и добавить 3 метода возведение в квадрат, куб, степень

extension Int {
    var square: Int {
        return(self * self)
    }
    
    var cube: Int {
        return(self * self * self)
    }
    
    func degree(numb: Double, power: Double) -> Double {
        return pow(numb, power)
    }
    
}

var number = 2
number.cube
number.square
number.degree(numb: 2, power: 5)


//Расширить еще 3 структуры на свой вкус и в коментах обосновать для чего это было сделано

//вычисляемые свойства в расширениях

extension Int {
    var kilogramOfApples: Int { return self * 99 }
    var kilogramOfOranges: Int { return self * 110 }
    var kilogramOfbanana: Int { return self * 75 }
}

var buyingApple = 2
buyingApple.kilogramOfApples

//методы в расширениях

extension Int {
    func repit(task: () -> ()) {
        for _ in 0..<self {
            task()
        }
    }
}
2.repit {
    print("Расширения в Swift")
}

//изменяющиеся методы экземпляра

extension Int {
    mutating func squareNew() {
        self = self * self
    }
}
var someInt = 5
someInt.squareNew()

//Добавьте проперти, которое возвращает количество символов в числе

extension String {
    var countOfNumber: Int {
        return(self.count)
    }
}
var chiclo = "13459"
chiclo.countOfNumber

//Добавить метод который говорит число положительное или отрицательное

extension Int {
    enum kindOfNumber {
        case negative
        case positive
    }
    
    var kind: kindOfNumber {
        switch self {
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}
let numberNew = -7
numberNew.kind


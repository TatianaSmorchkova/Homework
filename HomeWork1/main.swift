//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation



//Создать любой generic для классов, структур, методов, перечислений (по 1 на каждый).

//структуры

struct GenericArray<T> {
    var values = [T]()
    mutating func appendNewValue(value: T) {
        values.append(value)
    }
}

var arrayWithCity = ["Moscow", "London", "Paris"]
var newArrayWithCity = GenericArray(values: arrayWithCity)
newArrayWithCity.appendNewValue(value: "Amsterdam")

//классы

class Names<T> {
    let massiveOfNames: [T]
    
    init(names: [T]) {
        self.massiveOfNames = names
    }
    func printNames(names: [T]) {
        for elements in names {
            print(elements)
        }
    }
}
let namesOfFriends = Names(names: ["Оля", "Глория", "Кристина"])
namesOfFriends.printNames(names: ["Оля", "Глория", "Кристина"])


//функция

func welcome<T>(x: T) {
    print("Hello \(x)")
}

welcome(x: "Tanya")

//перечисления

enum differentValue<T> {
    case valueOne(T)
    case valueTwo(T)
}

differentValue.valueOne(100)
differentValue.valueTwo("100")

//Написать функцию, которая принимает Generic объект и складывает в массив/словарь(на выбор)

func newGeneic<T>(a: T) {
    var array = [T]()
    array.append(a)
    
    print(array)
}

newGeneic(a: "Apple")

//Написать класс на свой вкус(любые методы, проперти) универсального типа. Используя extension, расширить класс, добавить сабскрипт. (потренируйтесь)

class Warehouse<T> {
    var goods: [T]
    var owner: String
    var countOfGoods: Int
    var city: String
    
    init(goods: [T], owner: String, city: String) {
        self.goods = goods
        self.owner = owner
        self.countOfGoods = goods.count
        self.city = city
    }
    func printWarehouse() -> String {
        return "This warehouse has \(goods). The warehouse owner is \(owner). \(countOfGoods) items are stored here. Warehouse located \(city)"
    }
    
}

extension Warehouse {
    subscript(index: Int) -> String {
        get {
            if index <= countOfGoods {
                return ("такое количество товаров есть в наличии")
            } else {
                return ("такого количества товаров нет в наличии")
            }
        }
    }
}
struct Good {
    let name: String
    let price: Int
}

let goodsOfWarehouse = Warehouse(goods: [Good(name: "milk", price: 59),
                                         Good(name: "apple", price: 70),
                                         Good(name: "coca-cola", price: 80)], owner: "Maks", city: "Moscow")




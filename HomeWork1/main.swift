//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Создать 3 функции:
//первая функция принимает массив Int и сортирует его по порядку (возрастание). После этого распечатывает результат в консоль;
let money = [1, 250, 60, 89, 3, 98, 48, 6, 8]
func moneyCalculated(money: [Int]) {
    print(money.sorted())
}
moneyCalculated(money: money)



//вторая функция принимает массив String, меняет 1, 2 и 3 элементы сортирует по алфавиту.После этого распечатывает результат в консоль;
let contries = ["Tyrkey", "Belarus", "China", "Russia"]
func partners(contries: [String]) {
    var changeCountries = contries
    changeCountries[1] = "Latvia"
    changeCountries[2] = "Litva"
    changeCountries[3] = "Poland"
    print(changeCountries.sorted())
}
partners(contries: contries)

//третья функция принимает 2 массива String и складывает их. После этого распечатывает результат в консоль.

let myName = ["Татьяна"]
let mySurname = ["Сморчкова"]

func anketa(name: [String], surname: [String]) {
    print(myName + mySurname)
}
anketa(name: myName, surname: mySurname)


//Создать журнал для учителя, который будет принимать имя студента, профессию и оценку и записывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.


var jurnal = [String]()

func addStudents(name: String, profeccional: String, grade: Int) {
    
    jurnal.append(name)
    jurnal.append(profeccional)
    jurnal.append("\(grade)")
    
    print(jurnal)
}
addStudents(name: "Ivan", profeccional: "ios Dev", grade: 5)
addStudents(name: "Nikita", profeccional: "android Dev", grade: 4)
addStudents(name: "Ann", profeccional: "doctor", grade: 6)
addStudents(name: "Liza", profeccional: "manager", grade: 7)
addStudents(name: "Bella", profeccional: "designer", grade: 8)
addStudents(name: "Maks", profeccional: "driver", grade: 5)
addStudents(name: "Lena", profeccional: "teacher", grade: 9)
addStudents(name: "Nina", profeccional: "producer", grade: 10)
addStudents(name: "Dima", profeccional: "stilist", grade: 3)
addStudents(name: "Kate", profeccional: "pianist", grade: 5)

for anketaOfStudent in jurnal {
    print(anketaOfStudent)
}

//Создать функцию которая принимает имя и фамилию, потом положить это в массив и вывести результат в консоль.

var myAnketa = [String]()

func myDate(name: String, surname: String) {
    
    myAnketa.append(name)
    myAnketa.append(surname)
    
    print(myAnketa)
}
myDate(name: "Tatiana", surname: "Smorchkova")


//Создайте функцию которая принимает параметры и вычисляет площадь круга.

let radius = 3.14
let diametr = 2

func squareOfCircle(radius: Double, diametr: Int) -> Double {
    let result = radius * (Double(diametr) * 2)
    return result
}
squareOfCircle(radius: radius, diametr: diametr)


//Создайте Dictionary с именем учеников , где ключ name и score, а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.

let studentsOfClass = ("Антон", "Алексей", "Аким", "Артур", "Аркадий")
let gradesOfStudents = ("5", "4", "5", "3", "2")

let dictionary = (name: (studentsOfClass), score: (gradesOfStudents))

print(dictionary.name)

//Функция принимает 3 массива String. Задача: сложить их вместе, преобразовать в тип Int и посчитать сумму. Распечатать результат в консоль.

let one = ["1", "6"]
let two = ["2", "5"]
let three = ["3", "7"]
func calculated(codeOne: [String], codeTwo: [String], codeThree: [String]) {
    let summCode = codeOne + codeTwo + codeThree
    var summ = 0
    for code in summCode  {
        if let number = Int(code) {
            summ += number
        }
        print(summ)
    }
    
}
calculated(codeOne: ["1", "6"], codeTwo: ["2", "5"], codeThree: ["3", "7"])


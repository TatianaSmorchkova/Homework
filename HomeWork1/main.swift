//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Создать класс "IOSStudents",добавить ему property: dateOfBirth, skills. Для тренировки. Создавайте свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.

class IOSStudents {
    var dateOfBirth: String
    var skills: String
    
    init(dateOfBirth: String, skills: String) {
        self.dateOfBirth = dateOfBirth
        self.skills = skills
    }
}
var studentMaks = IOSStudents(dateOfBirth: "11.03.1994", skills: "Программирование")
print("Максим Максимов. Дата рождения \(studentMaks.dateOfBirth). Навыки: \(studentMaks.skills)")


//свойства хранения

struct Address {
    var country = "Россия"
    var city = "Москва"
    var street = "Кочновский проезд"
    var numberOfHouse = 4
    var flat = 200
}

var myAddress = Address()
print("Посылку отправьте по адресу: \(myAddress.country), \(myAddress.city), \(myAddress.street), \(myAddress.numberOfHouse), \(myAddress.flat)")

//свойства вычисления

struct Purchase {
    var price: Int
    var amount: Int
    
    var totalOfCost: Int {
        get {
            return price * amount
        }
        set {
            print(newValue)
        }
    }
}
var purchaseOfWater = Purchase(price: 100, amount: 5)
purchaseOfWater.totalOfCost
print("Стоимость 5 бутылок воды в 2021 году составила \(purchaseOfWater.totalOfCost)")
purchaseOfWater.price = 110
print("Стоимость 5 бутылок воды в 2021 году составила \(purchaseOfWater.totalOfCost)")
purchaseOfWater.totalOfCost = 150

//свойства типа

struct Budget {
    static var maxBudget = 50000
    var voucher: Int {
        didSet {
            if voucher > Budget.maxBudget {
                voucher = Budget.maxBudget
            }
        }
    }
}
var voucherOfTurkey = Budget(voucher: 40000)
var voucherOfItaly = Budget(voucher: 49000)
voucherOfItaly.voucher = 55000
print(voucherOfItaly.voucher)

//Написать структуру "CreateTriangle",с двумя свойствами - угол A,угол C. И создать 2 вычисляемых свойства - те же угол А,угол С. И если мы записываем значения в эти углы - результатом должно быть значение третьего угла. Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов.

struct CreateTriangle {
    var angleFirst: Int
    var angleSecond: Int
    
    
    var angleThird: Int {
        return 180 - angleFirst - angleSecond
    }
    
}
var triangle = CreateTriangle(angleFirst: 60, angleSecond: 90)
print(triangle.angleThird)

/*
 Создать структуру "Резюме", у которой есть такие свойства:
 - Фамилия,
 - Имя.
 - Должность,
 - Опыт,
 - Контактные данные(телефон, емейл),
 - О себе(можно записать какие-то пару предложений на выбор).
 */
struct Resume {
    var name: String
    var surname: String
    var fullName: String {
        return name + " " + surname
    }
    var profession: String
    var experience: Int
    var phone: String
    var aboutMe: String
}

var myResume = Resume(name: "Татьяна", surname: "Сморчкова", profession: "Категорийный менеджер", experience: 3, phone: "89211866786", aboutMe: "В свободное время занимаюсь плаванием и программированием")


//Задание на закрепление предыдущих тем: Создать журнал, что б можно было писать имя, фамилию и оценку. Поставить ограничения: имя и фамилия не выше 15 символов каждое. И оценка не выше 5. Если везде значения превышаться выдавать об этом Сообщения в консоль.


class Journal {
    static let maxCharacters = 15
    static let maxGrade = 5
    var informationAboutStudent: [Information] = []
    func newJournal(students: [Information]) {
        for student in students {
            if student.name.count > Journal.maxCharacters {
                print("Имя превышает количество символов")
            } else if student.surname.count > Journal.maxCharacters {
                print("Фамилия превышает количество символов")
            } else if student.grade > Journal.maxGrade {
                print("Оценка не может быть больше 5")
            } else {
                informationAboutStudent.append(student)
            }
            
        }
        
    }
    
}

struct Information {
    let name: String
    let surname: String
    let grade: Int
}

let journal = Journal()
journal.newJournal(students: [Information.init(name: "Иван", surname: "Петров", grade: 6)])

/*
 Написать класс,в котором есть 4 функции:
 - пустая, которая просто выводит сообщение через print,
 - которая принимаете параметры и выводит их в консоль,
 - которая принимает и возвращает параметры.
 - которая принимает замыкание и распечатывает результаты в консоль
 */

class NewClassWithFunc {
    func welcome() {
        print("Hello world!")
    }
    func welcomeFriend(friend: String) {
        print("Hello \(friend)")
    }
    func myFriend(friendFirst: String, friendSecond: String, friendThird: String) -> String {
        return friendFirst + " " + friendSecond + " " + friendThird
    }
    func values(numberOne: (Int) -> Void, numberTwo: Int) {
        numberOne(numberTwo)
    }
}
var newClassWithFunc = NewClassWithFunc()
newClassWithFunc.values(numberOne: { chislo in
    print(chislo)
}, numberTwo: 5)


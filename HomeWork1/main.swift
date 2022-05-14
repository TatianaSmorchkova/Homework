//
//  main.swift
//  HomeWork1
//
//  Created by Tatiana Smorchkova on 13.04.2022.
//

import Foundation

//Домашняя работа №11

//Создайте по 1-2 enum разных типов.

enum Color {
    case red
    case blue
    case green
    case brown
    case white
}

enum CostOfFruit : Int {
    case Apples = 100
    case Oranges = 250
    case Mango = 400
    case Bananas = 185
}

//Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.

enum DataOfEmployee {
    case sex
    case age
    case name
    case experience
}

let dataOfEmployee = DataOfEmployee.experience

switch dataOfEmployee {
case .sex:
    print("Пол: женский")
case .age:
    print("Возраст: 30 лет")
case .name:
    print("ФИО: Петров Иван Иванович")
case .experience:
    print("Стаж: 6 лет")
}


//Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов. Пример результата в консоли "apple green", "sun red" и т.д.

enum Rainbow {
    case req
    case orange
    case yellow
    case green
    case blue
    case darkblue
    case violet
}

func colors(objectOne: String, objectTwo: String, objectThree: String, objectFour: String, objectFive: String, objectSix: String, objectSeven: String) {
    print("\(objectOne) \(Rainbow.req), \(objectTwo) \(Rainbow.orange), \(objectThree) \(Rainbow.yellow), \(objectFour) \(Rainbow.green), \(objectFive) \(Rainbow.blue), \(objectSix) \(Rainbow.darkblue), \(objectSeven) \(Rainbow.violet) ")
}
colors(objectOne: "apple", objectTwo: "lion", objectThree: "sun", objectFour: "grass", objectFive: "sky", objectSix: "river", objectSeven: "ball")

//Создать функцию, которая выставляет оценки ученикам в школе.

func estimatesOfStudents(gradeOne: Int, gradeTwo: Int, gradeThree: Int, gradeFour: Int, gradeFive: Int) {
    print("Аня \(gradeOne), Ира \(gradeTwo), Катя \(gradeThree), Настя \(gradeFour), Юля \(gradeFive)")
}
estimatesOfStudents(gradeOne: 5, gradeTwo: 4, gradeThree: 5, gradeFour: 4, gradeFive: 4)

//Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.

enum CarInGarage {
    case bmw
    case audi
    case mercedes
    case nissan
    case cadillac
}
func cars(autoOne: CarInGarage, autoTwo: CarInGarage, autoThree: CarInGarage, autoFour: CarInGarage, autoFive: CarInGarage) {
    print("В нашем гараже есть 5 машин: \(autoOne), \(autoTwo), \(autoThree), \(autoFour), \(autoFive)")
}
cars(autoOne: .bmw, autoTwo: .audi, autoThree: .mercedes, autoFour: .nissan, autoFive: .cadillac)

//Напишите как понимаете enumerations: что это такое, в чем их смысл, зачем нужны. Ваше личное мнение: как и где их можно использовать?
//  Перечисления определяют общий тип для набора связанных значений. Enum удобен, когда мы знаем, что будут добавляться новые значения, ведь число комбинаций не увеличится. Преимущество enum в том, что он позволяет экономить много времени и кода, делает его читабельнее и красивее.

//Написать по 5-10 enum разных типов + создать как можно больше своих enumerations. Главное, соблюдайте правила написания: понятность и заглавная буква в начале названия. Пропустите их через switch и распечатайте (см.видео).
//#1
enum AutoBrand {
    case bmw
    case audi
    case mercedes
    case nissan
    case pegeout
    case cadillac
}

let auto = AutoBrand.nissan

switch auto {
case .nissan: print("Japan")
case .pegeout: print("France")
case .cadillac: print("USA")
case .audi, .bmw, .mercedes: print("German")
}

//#2

enum Present {
    case dress
    case bag
    case money
    case phone
}

let present = Present.bag
switch present {
case .bag: print("Настя подарила сумку")
case .dress: print("Лена подарила платье")
case .money: print("Маша подарила деньги")
case .phone: print("Даша подарила телефон")
}

//#3

enum BasicOperator : Character {
    case addition = "+"
    case subtraction = "-"
    case division = "%"
    case multiplication = "*"
}

let basicOperator = BasicOperator.addition

switch basicOperator {
case .addition:
    print("Оператор: \(basicOperator.rawValue)")
case .subtraction:
    print("Оператор: \(basicOperator.rawValue)")
case .division:
    print("Оператор: \(basicOperator.rawValue)")
case .multiplication:
    print("Оператор: \(basicOperator.rawValue)")
}

//#4

enum Weather {
    case temperature(Int, Int, Int, Int, Int)
    case month(String)
}
let weather = Weather.temperature(21, 26, 25, 30, 31)

switch weather {
case let .temperature(first, second, third, fourth, five):
    print("1 июля: \(first) градус, 2 июля: \(second) градусов, 3 июля: \(third) градусов, 4 июля: \(fourth) градусов, 5 июля: \(five) градус")
case .month(let monthOfsummer):
    print("Начало \(monthOfsummer) было жарким")
}

//#5
enum ExchangeRate: Double {
    case dollar = 69.7
    case euro = 71.5
    case lira = 4.9
}
let exchangeRate = ExchangeRate.dollar
switch exchangeRate {
case .dollar:
    print("Курс доллара \(exchangeRate.rawValue)")
case .euro:
    print("Курс евро \(exchangeRate.rawValue)")
case .lira:
    print("Курс лиры \(exchangeRate.rawValue)")
}


//Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, навыки, образование, хобби и т.д. - пункты на ваше усмотрение. Пропустите ваше резюме сначала через if else, затем через switch — для того, чтобы было понимание читаемости и красоты кода. Дайте свою оценку первому и второму варианту написания.

enum Resume {
    case name
    case surname
    case profession
    case skills
    case education
    case hobby
}
let resume = Resume.name

if resume == .name {
    print("Имя: Татьяна")
} else if resume == .surname {
    print("Фамилия: Сморчкова")
} else if resume == .profession {
    print("Профессия: Контент-менеджер")
} else if resume == .skills {
    print("Навыки: SMM")
} else if resume == .education {
    print("Образование: Высшее")
} else if resume == .hobby {
    print("Хобби: плавание")
}

let myResume = Resume.surname

switch myResume {
case .name:
    print("Имя: Татьяна")
case .surname:
    print("Фамилия: Сморчкова")
case .profession:
    print("Профессия: Контент-менеджер")
case .skills:
    print("Навыки: SMM")
case.education:
    print("Образование: Высшее")
case.hobby:
    print("Хобби: плавание")
}

//Вывод: вариант c switch быстрее в написании и компактнее

//Представьте, что вы попали на завод Apple. Вам принесли MacBook, Iphone, Ipad, Apple Watch и сказали: «Раскрась их в разные цвета. Джони Айву нужно вдохновение». Вы подвисли и начали раскрашивать. В итоге у вас получился красный MacBook, зеленый Ipad, розовый Iphone и буро-коричневый Apple Watch. Инструкция: для цветов задаём через enumeration. Наши девайсы располагаем в теле функции. Итог программы: «Айфон — розовый».

enum ColorOfApple {
    case red
    case greeen
    case pink
    case darkbrown
}

let colorOfIphone = ColorOfApple.pink

switch colorOfIphone {
case .red:
    print("Macbook - red")
case .greeen:
    print("iPad - green")
case .pink:
    print("iPhone - pink")
case .darkbrown:
    print("Apple Watch - dark brown")
}


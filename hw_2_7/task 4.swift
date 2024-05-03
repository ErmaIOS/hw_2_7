//
//  4 task.swift
//  hw_2_7
//
//  Created by Erma on 3/5/24.
//

//4. Задание "Liskov Substitution Principle в iOS":
//
//1. Создайте базовый класс Transport с методами start и stop. Затем создайте несколько производных классов, например, Car, Bicycle, и Boat.
//2. Убедитесь, что замена объекта базового класса Transport на объект любого из производных классов (например, Car, Bicycle, Boat) не нарушит работоспособность программы.
//3. В частности, напишите функцию, которая принимает объект типа Transport и вызывает его методы start и stop. Продемонстрируйте, что эта функция работает корректно с объектами всех производных классов, не вызывая ошибок или несоответствий в поведении.
//4. Объясните, как ваш код соответствует принципу подстановки Лисков (Liskov Substitution Principle) и почему это важно для объектно-ориентированного дизайна

class Transport {
    func start(){
        print("Transport started")
    }
    func stop() {
        print("Transport stopped")
    }
}

class Car: Transport {
    override func start(){
        print("Car started")
    }
    override func stop(){
        print("Car stopped")
    }
}

class Bicycle: Transport {
    override func start(){
        print("Bicycle started")
    }
    override func stop(){
        print("Bicycle stopped")
    }
}

class Boat: Transport {
    override func start(){
        print("Boat started")
    }
    override func stop(){
        print("Boat stopped")
    }
}

func transport(with transport: Transport){
    transport.start()
    transport.stop()
}

let car = Car()
let bicycle = Bicycle()
let boat = Boat()

transport(car)
transport(bicycle)
transport(boat)


//Принцип LSP гласит, что объекты в программе должны быть заменяемыми на экземпляры их подтипов без изменения правильности этой программы.
//Это означает, что дочерний класс может расширять или специализировать поведение родительского класса, но не должен ему противоречить.
// Мой код соответствует принципу подстановки Лисков (Liskov Substitution Principle),так как в нем нет нарушения ожидаемого поведения - три  объекта(car,bicycle,boat) умеют начинать func start() и останавливаться func stop(), просто имеют различную реализацию и могут быть взаимно заменены в вызывающем их коде.
//Это важно для объектно-ориентированного дизайна, потому что соблюдение принципа подстановки Лискова способствует гибкости, расширяемости и надежности кода.

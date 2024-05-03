//
//  3 task.swift
//  hw_2_7
//
//  Created by Erma on 3/5/24.
//

//3. Задание "Open-Closed Principle":
// 
//Создайте класс Shape с методом draw().
//Расширьте ваше приложение, добавив новые формы (например, Circle, Square), не изменяя существующий класс Shape.

class Shape{
    func draw() {
        print("Фигура")
    }
}

class Circle: Shape {
    override func draw(){
        print("Фигура круга")
    }
}

class Square: Shape {
    override func draw(){
        print("Фигура квадрата")
    }
}

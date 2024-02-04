//
//  calculator.swift
//  lab_one
//
//  Created by Arsen Rysbayev on 04.02.2024.
//

import Foundation
func сложить(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func вычесть(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func умножить(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func разделить(_ a: Double, _ b: Double) -> Double? {
    guard b != 0 else {
        print("Ошибка: Нельзя делить на ноль")
        return nil
    }
    return a / b
}

func возвестиВСтепень(_ a: Double, _ b: Double) -> Double {
    return pow(a, b)
}

func получитьВвод() -> (Double, Double, String)? {
    print("Введите первое число:")
    guard let num1 = Double(readLine() ?? "") else {
        print("Ошибка: Некорректное число")
        return nil
    }
    
    print("Введите оператор (+, -, *, /, ^):")
    guard let operatorSymbol = readLine(), ["+", "-", "*", "/", "^"].contains(operatorSymbol) else {
        print("Ошибка: Некорректный оператор")
        return nil
    }
    
    print("Введите второе число:")
    guard let num2 = Double(readLine() ?? "") else {
        print("Ошибка: Некорректное число")
        return nil
    }
    
    return (num1, num2, operatorSymbol)
}

func выполнитьОперацию(num1: Double, num2: Double, operatorSymbol: String) {
    var result: Double?
    
    switch operatorSymbol {
    case "+":
        result = сложить(num1, num2)
    case "-":
        result = вычесть(num1, num2)
    case "*":
        result = умножить(num1, num2)
    case "/":
        result = разделить(num1, num2)
    case "^":
        result = возвестиВСтепень(num1, num2)
    default:
        print("Ошибка: Некорректный оператор")
    }
    
    if let result = result {
        print("Результат: \(result)")
    }
}

while true {
    if let (num1, num2, operatorSymbol) = получитьВвод() {
        выполнитьОперацию(num1: num1, num2: num2, operatorSymbol: operatorSymbol)
    }
}

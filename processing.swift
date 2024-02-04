//
//  processing.swift
//  lab_one
//
//  Created by Arsen Rysbayev on 04.02.2024.
//

import Foundation

print("1. Введите первую строку:")
if let firstLine = readLine() {
    print("Введите вторую строку:")
    if let secondLine = readLine() {
        let combinedString = "\(firstLine) \(secondLine)"
        print("Результат объединения: \(combinedString)")
    }
}

print("\n2. Введите строку для переворота:")
if let inputString = readLine() {
    let reversedString = String(inputString.reversed())
    print("Результат переворота: \(reversedString)")
}

print("\n3. Введите строку для подсчета символов:")
if let countString = readLine() {
    let characterCount = countString.replacingOccurrences(of: " ", with: "").count
    print("Количество символов (без пробелов): \(characterCount)")
}

print("\n4. Введите строку:")
if let mainString = readLine() {
    print("Введите подстроку для поиска:")
    if let substring = readLine() {
        if let range = mainString.range(of: substring) {
            let index = mainString.distance(from: mainString.startIndex, to: range.lowerBound)
            print("Первое вхождение подстроки \"\(substring)\" на позиции: \(index + 1)")
        } else {
            print("Подстрока не найдена в строке.")
        }
    }
}

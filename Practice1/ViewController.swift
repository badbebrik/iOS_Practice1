//
//  ViewController.swift
//  Practice1
//
//  Created by Виктория Серикова on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(normalizeGrades())
    }
    
    
    func normalizeGrades() -> [String: Double] {
            IOSNis.students = [
                Student(grades: [3.51, 10, 9], fullName: "Ушакова Ангелина"),
                Student(grades: [7, 8, 7.5], fullName: "Алибек Адхамов"),
                Student(grades: [6, 7, 9.5], fullName: "Cерикова Виктория"),
                Student(grades: [7, 6.5, 9], fullName: "Манушкина  Анастасия"),
                Student(grades: [4.2, 8, 6.5], fullName: "Новик  Илья"),
            ]
            
            var normalizedGrades: [String: Double] = [:]
            var maxGrade : Double = 0
            let highestMark: Double = 10.0
        
            for student in IOSNis.students {
                if student.getGrade() > maxGrade
                {
                    maxGrade = student.getGrade();
                }
            }
            
            for student in IOSNis.students {
                var normalizedGrade = student.getGrade()
                if maxGrade != highestMark {
                    normalizedGrade = normalizedGrade * highestMark / maxGrade
                }
                normalizedGrades[student.fullName] = normalizedGrade
            }
            
            return normalizedGrades
        }


}


//
//  Course.swift
//  Tinder-lon
//
//  Created by Rene Alonzo Choque Saire on 15/5/23.
//

import Foundation
struct Course {
    var name: String
    var image: String
}

#if DEBUG
var courses: [Course] = [
    Course(name: "Probabilidad y Variables Aleatorias", image: "maths"),
    Course(name: "Machine Learning de la A a la Z", image: "ml_az"),
    Course(name: "Curso completo de Sage", image: "python"),
    Course(name: "Aprueba la Selectividad", image: "selectividad"),
    Course(name: "Curso de Swift UI e iOS 13", image: "swift"),
    Course(name: "Tensorflow 2 al completo", image: "tensorflow2"),
    Course(name: "Curso de Unreal Engine", image: "unrealengine"),
    Course(name: "Curso de Unity 2019", image: "videogames")
]

#endif

//
//  HomeViewModel.swift
//  ProjectSculptExtension
//
//  Created by Monty on 12/3/24.
//

import Foundation


class HomeViewModel: ObservableObject {
    var calories: Int = 123
    var active: Int = 8
    var stand: Int = 4
    
    var mockActivities = [
        Activity( id:0, title:"Todays steps", subtitle:"Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"
                ),
        Activity( id:1, title:"Todays steps", subtitle:"Goal 11,000", image: "figure.walk", tintColor: .red, amount: "812"
                ),
        Activity( id:2, title:"Todays steps", subtitle:"Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9812"
                ),
        Activity( id:3, title:"Todays steps", subtitle:"Goal 12,000", image: "figure.run", tintColor: .purple, amount: "1029"
                )
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Chris class", image: "figure.run", duration: "51min", date: "Aug 1", calories: "512 kcal", tintColor: .red),
        Workout(id: 1, title: "Darrian Class", image: "figure.run", duration: "51min", date: "Aug 11", calories: "512 kcal", tintColor: .purple),
        Workout(id: 2, title: "Running", image: "figure.run", duration: "51min", date: "Aug 12", calories: "512 kcal", tintColor: .cyan),
        Workout(id: 3, title: "Running", image: "figure.run", duration: "51min", date: "Aug 13", calories: "512 kcal", tintColor: .cyan),
    ]
}

//
//  WorkoutCard.swift
//  ProjectSculptExtension
//
//  Created by Monty on 12/2/24.
//

import SwiftUI
struct Workout {
    let id: Int
    let title: String
    let image: String
    let duration: String
    let date: String
    let calories: String
    let tintColor: Color
    
}
struct WorkoutCard: View {
    @State var workout: Workout
    var body: some View {
        HStack {
            Image(systemName: "figure.run")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack {
                HStack {
                    Text (workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.duration)
                }
                HStack {
                    Text(workout.date)
                    
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct WorkoutCard_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCard(workout: Workout(id: 0, title: "Running", image: "figure.run", duration: "51min", date: "Aug 1", calories: "512 kcal", tintColor: .cyan))
    }
}

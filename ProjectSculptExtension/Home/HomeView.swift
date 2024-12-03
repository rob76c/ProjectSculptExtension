//
//  HomeView.swift
//  ProjectSculptExtension
//
//  Created by Monty on 12/1/24.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 8
    @State var stand: Int = 4
    
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
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            
                            Text("52 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            
                            Text("8 hours")
                                .bold()
                        }
                    }
                    Spacer()
                    
                    ZStack {
                        ProgressCircleView(progress: $calories, goal: 600, color: .blue)
                        
                        ProgressCircleView(progress: $active, goal: 60, color: .green)
                            .padding(.all, 20)
                        
                        ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                            .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .padding()
                
                HStack {
                    Text("Fitness Activity")
                        .font(.title2)
                    Spacer()
                    
                    Button {
                        print("show more")
                    } label: {
                        Text("Show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    }
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                    ForEach(mockActivities, id: \.id) { activity in
                        ActivityCard(activity: activity)
                    }

                }
                .padding(.horizontal)
            }
        }
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}

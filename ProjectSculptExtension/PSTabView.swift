//
//  PSTabView.swift
//  ProjectSculptExtension
//
//  Created by Monty on 12/1/24.
//

import SwiftUI

struct PSTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .blue
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.label]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            HistoricDataView()
                .tag("Historic")
                .tabItem{
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
    }
}

struct PSTabView_Previews: PreviewProvider {
    static var previews: some View {
        PSTabView()
    }
}

//
//  ContentView.swift
//  Hiking app Concept
//
//  Created by Pat on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab:Tab = .explore
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group{
                switch selectedTab {
                case .explore:
                    HikingHomeView()
                case .favourites:
                    Text("Favourites")
                case .events:
                    Text("Events")
                case .profile:
                    Text("Profile")
                }
            }
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            
            TabBar()
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear
                .frame( height: 44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

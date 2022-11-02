//
//  Tab.swift
//  Hiking app Concept
//
//  Created by Pat on 2022/11/02.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab:Tab
    var color: Color
}

enum Tab: String, CaseIterable{
    case explore
    case favourites
    case events
    case profile
}

struct TabPreferenceKey: PreferenceKey{
    static var defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

extension TabItem{
    static var tabItems = [
        TabItem(text: "Explore", icon: "location.circle",tab: .explore,color: Color(hex: "ae2012")),
        TabItem(text: "Favourites", icon: "heart",tab: .favourites,color: Color(hex: "bb3e03")),
        TabItem(text: "Events", icon: "calendar",tab: .events,color: Color(hex: "ca6702")),
        TabItem(text: "Profile", icon: "person.circle",tab: .profile,color: Color(hex: "ee9b00"))
    ]
}


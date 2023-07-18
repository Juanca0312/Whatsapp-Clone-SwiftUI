//
//  ContentView.swift
//  WhatsApp Clone SwiftUI
//
//  Created by Juan Carlos Hernandez Castillo on 18/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var tabTitle = Tab.status
    
    var body: some View {
        NavigationStack {
            TabView(selection: $tabTitle) {
                Text("Status")
                    .tabItem {
                        Image(systemName: "livephoto")
                        Text("Status")
                    }
                    .tag(Tab.status)
                
                Text("Calls")
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Calls")
                    }
                    .tag(Tab.calls)
                
                Text("Communities")
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Communities")
                    }
                    .tag(Tab.communities)
                
                ChatView()
                    .badge(2)
                    .tabItem {
                        Image(systemName: "message")
                        Text("Chats")
                    }
                    .tag(Tab.chats)
                
                Text("Settings")
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                    .tag(Tab.settings)
                
            }.navigationTitle(tabTitle.title)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Tab: Int {
    case status = 1
    case calls = 2
    case communities = 3
    case chats = 4
    case settings = 5
    var title: String {
        switch self {
        case .status:
            return "Status"
        case .calls:
            return "Calls"
        case .communities:
            return "Communities"
        case .chats:
            return "Chats"
        case .settings:
            return "Settings"
        }
    }
}
